# INC-2026-084: Post-Mortem & Resolution Report – Core DNS & DHCP Outage

| Incident Metadata | Details |
| :--- | :--- |
| **Incident ID** | INC-2026-084 |
| **Severity Level** | P1 - Critical Business Impact |
| **Date of Incident** | October 10, 2026 |
| **Author / Responder** | Senior Network Administrator |
| **Status** | Resolved / Post-Mortem Completed |

---

## 1. Executive Summary
At 09:14 EST, the corporate headquarters experienced a sudden network-wide outage affecting 450+ endpoints. Users lost local subnet connectivity, internal resource resolution, and external internet access. Root-cause analysis revealed IP address exhaustion on the primary DHCP scope paired with a cascading failure of local DNS forwarding tables. This document outlines the symptoms, diagnostic command path, and permanent remediation steps implemented.

---

## 2. Symptoms & Impact
* **End-User Impact:** Wireless and wired clients received `169.254.x.x` (APIPA) local-only fallback IP addresses.
* **Error Messages:** Browsers reported `DNS_PROBE_FINISHED_NXDOMAIN` and client machines threw `DHCP Lease Generation Failed (Error 0x795)`.
* **Infrastructure Monitoring:** Nagios and PRTG alerting triggered high-latency warnings followed by complete target dropouts on Domain Controller `DC-01`.

---

## 3. Diagnostic Methodology & Step-by-Step Investigation

### Step 3.1: Verify Client-Side Configuration
Ran standard diagnostics on an affected Windows workstation to check IP status:
\`\`\`powershell
ipconfig /all
\`\`\`
* *Observation:* The IPv4 Address showed a self-assigned `169.254.10.45`, confirming the client could not reach the DHCP server.

### Step 3.2: Inspect DHCP Server Lease Table
Logged into the Windows Server DHCP management console via PowerShell to check lease capacity:
\`\`\`powershell
Get-DhcpServerv4Scope -ComputerName "DC-01" | Get-DhcpServerv4FreeIPAddress
\`\`\`
* *Finding:* `FreeAddressCount` returned `0`. The scope was 100% exhausted due to unreleased guest leases and stale corporate hardware registrations.

### Step 3.3: Verify DNS Forwarder Resolution
Tested internal DNS recursion against external root hints:
\`\`\`powershell
Resolve-DnsName -Name "enterprise.com" -Server 192.168.1.10
\`\`\`
* *Finding:* DNS resolution timed out due to cache pollution caused by unreachable DHCP gateway entries.

---

## 4. Root Cause Analysis (RCA)
1. **Scope Exhaustion:** The default lease duration was set to 8 days. With a high influx of contractor devices over the prior two weeks, the subnet pool (`192.168.10.0/24`) ran out of available IPs.
2. **Cascading Failure:** When DHCP failed, endpoints lost dynamic registration updates in Active Directory integrated DNS, causing internal name resolution to stall completely.

---

## 5. Permanent Remediation & Corrective Actions

### Action 1: Adjust DHCP Lease Durations
Reduced lease times from 8 days to **24 hours** to quickly reclaim abandoned IPs from transient devices:
\`\`\`powershell
Set-DhcpServerv4Scope -ComputerName "DC-01" -ScopeId 192.168.10.0 -LeaseDuration (New-TimeSpan -Days 1)
\`\`\`

### Action 2: Implement DHCP Scope Expansion
Expanded the subnet range and added a secondary exclusion range for static infrastructure printers and access points.

### Action 3: Clear DNS Cache & Restart Services
Cleared stale socket bindings and restarted the DNS server client service on `DC-01`:
\`\`\`powershell
Clear-DnsServerCache -ComputerName "DC-01" -Force
Restart-Service -Name "DNS"
\`\`\`

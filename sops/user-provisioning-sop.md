# SOP-ID-042: Enterprise User Provisioning & Identity Management

| Document Metadata | Details |
| :--- | :--- |
| **Author** | Technical Operations / IT Lead |
| **Effective Date** | October 10, 2026 |
| **Target Audience** | Tier 2 Helpdesk, Systems Administrators |
| **Review Cycle** | Bi-Annual |

---

## 1. Overview & Objective
This Standard Operating Procedure (SOP) defines the mandatory lifecycle steps for provisioning corporate identity, email access, and role-based access control (RBAC) for incoming enterprise personnel. Adherence ensures compliance, security integrity, and rapid onboarding.

## 2. Prerequisites & Required Permissions
* **Privileged Access:** Global Administrator or User Administrator role in Microsoft Entra ID / Azure AD.
* **Prerequisite Systems:** Active Directory (AD) Domain Controller, Enterprise HRIS portal.
* **Hardware Token:** Administrator MFA hardware key active.

---

## 3. Step-by-Step Execution Procedure

### Step 3.1: Verify HR Provisioning Request
1. Open the confidential HRIS onboarding portal.
2. Cross-reference the official employee start date, legal name, and assigned department.
3. Confirm manager sign-off is completed.

### Step 3.2: Provision Identity in Entra ID / Active Directory
1. Navigate to the **Microsoft Entra admin center**.
2. Select **Identity > Users > All users > New user > Create new user**.
3. Fill out the user profile using the standardized naming convention:
   * *Format:* `Firstname.Lastname@enterprise.com`
4. Assign the appropriate department tag and office location.

### Step 3.3: Assign Role-Based Access Control (RBAC) Groups
Assign security groups based on department matrix:
* **Engineering:** `SG-DevOps-Access`, `SG-GitHub-Enterprise`
* **Finance:** `SG-Financial-ERP`, `SG-Secure-Storage`
* **General Staff:** `SG-M365-Standard-Users`

---

## 4. Verification & Validation
Confirm provisioning success by executing the Microsoft Graph PowerShell verification script:

\`\`\`powershell
# Verify user account state and group membership
Get-MgUser -UserId "Firstname.Lastname@enterprise.com" | Select-Object DisplayName, UserPrincipalName, AccountEnabled
\`\`\`

## 5. Troubleshooting & Rollback
* **Issue:** Account synchronization failure between local AD and Entra ID cloud.
* **Resolution:** Force manual delta sync via PowerShell on the primary domain controller:
  \`\`\`powershell
  Start-ADSyncSyncCycle -PolicyType Delta
  \`\`\`

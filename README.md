# Technical Documentation & IT Operations Portfolio

> **Author:** Jose Moran  
> **Role:** Technical Operations Lead / Systems Administrator  
> **Workflow:** Docs-as-Code | Version-Controlled via Git | Hosted on GitHub Pages  

Welcome to my central technical documentation portal. This repository demonstrates production-ready IT operations standards, enterprise runbooks, end-user onboarding documentation, and incident root-cause analysis using a strict **Docs-as-Code** workflow.

---

## 📂 Quick Navigation Directory

| Category | Document Title | Description | Target Audience |
| :--- | :--- | :--- | :--- |
| 🛡️ **SOPs** | [User Provisioning & Identity Management](./sops/user-provisioning-sop.md) | Standard runbook for Entra ID, Active Directory, and RBAC lifecycle provisioning. | Tier 2 Helpdesk, SysAdmins |
| 📖 **User Guides** | [VPN & MFA Setup Guide](./user-guides/vpn-and-mfa-setup.md) | Friendly onboarding walkthrough for non-technical remote workers. | Remote Employees, End-Users |
| 🔍 **Troubleshooting** | [DNS & DHCP Outage Post-Mortem](./troubleshooting/resolving-dns-dhcp-outages.md) | Root-cause analysis (RCA), diagnostic logs, and scope expansion for P1 outages. | Incident Responders, Network Ops |
| 📐 **Architecture** | [Infrastructure Topology Diagram](./assets/architecture-diagram.md) | Visual sequence and data flow model rendered with native Mermaid.js text graphics. | IT Leadership, Security Teams |

---

## 🛠️ Portfolio Standards & Frameworks

* **Docs-as-Code Methodology:** Managed entirely in Markdown, version-controlled with Git, and deployed automatically via CI/CD pipelines.
* **Standardized Metadata Header:** Every operational SOP and post-mortem includes metadata tracking author, review cycle, and classification.
* **Auditable Operations:** Features clear PowerShell diagnostic syntax, step-by-step verification commands, and explicit RBAC mappings.

---

## 📬 Contact & Links
* **Repository:** [jose-builds-docs/tech-docs-portfolio](https://github.com/jose-builds-docs/tech-docs-portfolio)
* **Live Site:** [jose-builds-docs.github.io/tech-docs-portfolio](https://jose-builds-docs.github.io/tech-docs-portfolio/)

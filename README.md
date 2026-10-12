# 🚀 Technical Documentation & Automation Portfolio

<p align="left">
  <img src="https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-blue?style=for-the-badge&logo=githubactions&logoColor=white" alt="GitHub Actions" />
  <img src="https://img.shields.io/badge/PowerShell-7%2B-0078D4?style=for-the-badge&logo=powershell&logoColor=white" alt="PowerShell" />
  <img src="https://img.shields.io/badge/OS-Windows%2011%20%7C%20iPadOS-0078D4?style=for-the-badge&logo=windows11&logoColor=white" alt="Platform" />
  <img src="https://img.shields.io/badge/Docs-Technical%20Library-success?style=for-the-badge&logo=markdown&logoColor=white" alt="Technical Library" />
</p>

Welcome to my **Docs-as-Code** enterprise portfolio repository. This page acts as an interactive portal to every automation script, CI/CD pipeline, and documentation asset stored in this repository.

> 📚 **Technical Library Hub:** For a complete breakdown of documentation governance and cataloging, explore [`docs/index.md`](./docs/index.md).

---

## 🗂️ Complete Directory & File Manifest

Explore all active project files directly through the table below:

| Directory / File | Type | Purpose | Direct Access Link | Status |
| :--- | :--- | :--- | :--- | :---: |
| **`.github/workflows/powershell-ci.yml`** | CI/CD | Automated `PSScriptAnalyzer` linting pipeline | [View Workflow](./.github/workflows/powershell-ci.yml) | `🟢 Active` |
| **`scripts/System-Health-Check.ps1`** | Script | Real-time PowerShell system diagnostic tool | [View Script](./scripts/System-Health-Check.ps1) | `🟢 Active` |
| **`docs/index.md`** | Catalog | Master Technical Library index & asset registry | [View Index](./docs/index.md) | `🟢 Active` |
| **`README.md`** | Docs | Primary portfolio entry point & architecture overview | [View File](./README.md) | `🟢 Active` |

---

## 🛠️ Architecture & Quality Assurance

```text
  [ Developer Commit ]
           │
           ▼
  [ GitHub Actions Runner ]
           │
           ▼
  [ PSScriptAnalyzer Linting ] ────► (Pass / Fail Status Badge)
           │
           ▼
  [ Verified Portfolio Code ]

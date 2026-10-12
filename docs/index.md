# 📚 Enterprise Technical Documentation Catalog

<p align="left">
  <img src="https://img.shields.io/badge/Docs-as--Code-blue?style=for-the-badge&logo=markdown&logoColor=white" alt="Docs as Code" />
  <img src="https://img.shields.io/badge/Status-Active%20Library-success?style=for-the-badge" alt="Status" />
  <img src="https://img.shields.io/badge/Owner-Jose%20Moran-0078D4?style=for-the-badge&logo=github&logoColor=white" alt="Owner" />
</p>

Welcome to the central knowledge base for **`tech-docs-portfolio`**. This living library indexes operational runbooks, automation tools, CI/CD pipeline specifications, and engineering guidelines.

> 💡 **Docs-as-Code Philosophy:** All documentation in this repository is version-controlled, written in Markdown, and validated alongside application code to guarantee accuracy and freshness.

---

## 🗂️ Core Repository Assets & Tools

| Asset Name | Description | Target Path | Tech Stack | Status |
| :--- | :--- | :--- | :--- | :---: |
| **System Health Check** | Diagnostics & live system telemetry script | [`scripts/System-Health-Check.ps1`](../scripts/System-Health-Check.ps1) | PowerShell 7+ | `🟢 Active` |
| **PowerShell CI Pipeline** | Automated script linting & quality gate | [`.github/workflows/powershell-ci.yml`](../.github/workflows/powershell-ci.yml) | GitHub Actions | `🟢 Active` |
| **Portfolio Front Door** | Enterprise README & architecture overview | [`README.md`](../README.md) | Markdown | `🟢 Active` |

---

## 📂 Planned Documentation Categories

<details open>
<summary><b>📖 Operational Runbooks (Troubleshooting & Health)</b></summary>
<br />

* **System Health Triage Guide:** Step-by-step remediation procedures when CPU, memory, or disk health alerts trigger during automated diagnostic runs. *(Coming next)*
</details>

<br />

<details open>
<summary><b>🏗️ Architecture & Engineering Standards</b></summary>
<br />

* **CI/CD Quality Assurance Model:** Architectural breakdown of automated linting via `PSScriptAnalyzer`.
* **Repository Style Guide:** Standardized Markdown rules and repository commit conventions.
</details>

---

## 🤝 Governance & Maintenance

* **Last Updated:** October 2026
* **Maintained By:** Jose Moran ([@jose-builds-docs](https://github.com/jose-builds-docs))
* **License & Access:** Internal Portfolio & Reference Library

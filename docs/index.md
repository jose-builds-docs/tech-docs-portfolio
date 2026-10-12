# 📚 Enterprise Technical Documentation Catalog

<p align="left">
  <img src="https://img.shields.io/badge/Docs-as--Code-blue?style=for-the-badge&logo=markdown&logoColor=white" alt="Docs as Code" />
  <img src="https://img.shields.io/badge/Status-Active%20Library-success?style=for-the-badge" alt="Status" />
  <img src="https://img.shields.io/badge/Maintainer-Jose%20Moran-0078D4?style=for-the-badge&logo=github&logoColor=white" alt="Owner" />
</p>

This catalog indexes all active files in **`tech-docs-portfolio`**. Click any resource link to inspect its source code, configuration, or documentation.

---

## 🗄️ Full Repository File Index

### 1. Script & Automation Assets
* **[`scripts/System-Health-Check.ps1`](../scripts/System-Health-Check.ps1)**
  * **Role:** Primary telemetry script.
  * **Language:** PowerShell 7+
  * **Validation:** Verified via CI linter.

### 2. Continuous Integration Workflows
* **[`.github/workflows/powershell-ci.yml`](../.github/workflows/powershell-ci.yml)**
  * **Role:** Continuous Integration definition.
  * **Framework:** GitHub Actions & `PSScriptAnalyzer`.
  * **Triggers:** Push & Pull Requests on `main`.

### 3. Documentation & Governance
* **[`README.md`](../README.md)**
  * **Role:** Repository front page and architecture summary.
* **[`docs/index.md`](./index.md)**
  * **Role:** Technical Library Master Index (This File).

---

## 🛠️ Repository Inspection Matrix

| Category | Item Name | Relative Path | Direct Access |
| :--- | :--- | :--- | :---: |
| **Automation** | Health Diagnostic Script | `scripts/System-Health-Check.ps1` | [Inspect File](../scripts/System-Health-Check.ps1) |
| **DevOps** | CI Quality Pipeline | `.github/workflows/powershell-ci.yml` | [Inspect File](../.github/workflows/powershell-ci.yml) |
| **Documentation** | Portfolio README | `README.md` | [Inspect File](../README.md) |
| **Documentation** | Master Catalog Index | `docs/index.md` | [Inspect File](./index.md) |

---

## 🤝 Maintenance Metadata

* **Last Updated:** October 2026
* **Environment:** iPadOS Browser & Windows 11 PowerShell CLI
* **Repository:** `jose-builds-docs/tech-docs-portfolio`

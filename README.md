# Technical Documentation & Automation Portfolio

![PowerShell CI Status](https://github.com/jose-builds-docs/tech-docs-portfolio/actions/workflows/powershell-ci.yml/badge.svg)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20iPadOS-blue)
![Language](https://img.shields.io/badge/Language-PowerShell-blue)

Welcome to my **Docs-as-Code** technical portfolio. This repository showcases automated system administration scripts, continuous integration workflows, and production-grade technical documentation.

---

## 🛠️ Architecture & Tech Stack

* **Version Control:** Git & GitHub (SSH authenticated)
* **Automation / CI/CD:** GitHub Actions (`PSScriptAnalyzer` linting pipeline)
* **Scripting Language:** PowerShell 7+
* **Development Environment:** Windows 11 (PowerShell CLI) / iPadOS (Web Management)

---

## 📂 Repository Structure

```text
tech-docs-portfolio/
├── .github/
│   └── workflows/
│       └── powershell-ci.yml   # Automated code linting & validation
├── scripts/
│   └── System-Health-Check.ps1 # System telemetry & health diagnostic tool
└── README.md                   # Repository documentation

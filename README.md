This repository represents a structured portfolio of security testing workflows, automation utilities, and sanitized reporting samples. It demonstrates practical approaches to identifying security weaknesses across infrastructure, web applications, and basic smart contract environments.

The focus is not on tool usage alone, but on methodology, validation, and clear remediation guidance.

🎯 Purpose

This lab was created to simulate real-world security assessment scenarios in controlled environments.

It highlights:

Surface reconnaissance and service enumeration

Infrastructure misconfiguration detection

Web application exposure analysis

Basic smart contract logic review

Structured vulnerability reporting

All demonstrations are conducted in authorized lab environments.

🛠️ Project Components
scripts/

recon_automator.sh
Bash-based Nmap automation script designed to streamline service discovery and initial exposure mapping.

sub_enum.py
Python-based subdomain discovery logic used for reconnaissance simulations.

samples/

Contains sanitized scan outputs and structured findings to demonstrate:

Tool result interpretation

Risk validation process

Documentation methodology

No real production targets are included.

SAMPLES.md

A comprehensive, multi-layer security assessment demonstration report covering:

Infrastructure exposure

Web application debug & configuration risks

Smart contract validation weaknesses

The report emphasizes actionable remediation rather than theoretical findings.

🚀 How to Use

These scripts are intended strictly for authorized security testing within controlled or permitted environments.

Clone the repository:

git clone https://github.com/moharxx/infrastructure-security-testing-lab.git

Run infrastructure reconnaissance:

./scripts/recon_automator.sh <target_ip>

Run subdomain discovery:

python3 scripts/sub_enum.py <domain>
📊 Reporting Approach

The included sample report demonstrates:

Risk classification

Clear impact explanation

Business-focused remediation steps

Structured executive-ready documentation style

⚠️ Disclaimer

This repository is provided for educational and professional demonstration purposes only.
All testing examples were performed in self-hosted or authorized lab environments.

Unauthorized testing against third-party systems is strictly discouraged.

# Upgrading pgwatch Dashboards for Grafana v11: A GSoC 2025 Journey

Hello PostgreSQL Community,

I'm Gaurav, an undergraduate student from the Indian Institute of Technology Kharagpur. I’m thrilled to share that I have been selected as a contributor for **Google Summer of Code 2025**, under the mentorship of the **PostgreSQL organization**. My project is centered around modernizing the **pgwatch Grafana dashboards**, ensuring full compatibility with **Grafana version 11**.

---

## 🔍 Project Overview

Grafana v11 introduces major architectural updates, including the complete removal of AngularJS-based components and changes to how dashboard panels are structured. While some pgwatch dashboards have already seen partial migration, many still rely on deprecated configurations.

The goal of this project is to comprehensively upgrade all dashboards to be fully compatible with Grafana v11, making use of its modern features while also enhancing clarity, usability, and maintainability. The project also aims to produce detailed documentation to support future updates.

---

## 🎯 Project Goals

- **Replace Deprecated Components**  
  Identify and remove AngularJS-based panels and plugins to ensure compatibility with Grafana v11.

- **Update Dashboard JSON Schemas**  
  Refactor legacy fields like `yaxes`, `lines`, and `fill`, and adopt the modern `fieldConfig`, `options`, and `overrides` structure.

- **Apply Modern Transformations**  
  Utilize new transformation features like merging, reducing fields, and adding calculated metrics for more dynamic visualizations.

- **Improve Visual and UX Consistency**  
  Polish layouts, color schemes, tooltips, legends, and unit formatting across all dashboards.

- **Validate with Live Data**  
  Generate PostgreSQL workload data and verify that upgraded dashboards render correctly without errors.

- **Versioned Dashboard Management**  
  Export all updated dashboards under a `v11/` directory, ensuring clear versioning for PostgreSQL and Prometheus monitoring setups.

- **Document the Migration Process**  
  Provide detailed upgrade documentation, including migration examples and best practices for future dashboard contributions.

---

## ⚙️ Implementation Approach

Grafana v11 officially drops support for AngularJS-based panels, which were still functional in v10. This has a direct impact on older dashboards using now-deprecated elements.

Here’s a quick reference of deprecated components and their modern replacements:

| Deprecated AngularJS Component       | Grafana v11 Replacement                          |
|-------------------------------------|--------------------------------------------------|
| Text panel (HTML mode)              | Markdown Text panel or Stat panel                |
| Singlestat panel                    | Stat panel                                       |
| Graph panel (`yaxes`, `lines`, etc.)| Time series panel                                |
| Legacy transformations in queries   | Grafana’s built-in transformations               |
| Custom HTML in descriptions         | Markdown panels or tooltips                      |

To streamline migration, I developed a **Python script** that scans multiple JSON files, flags deprecated components, and logs them with panel titles. This automation helps identify problem areas quickly and consistently.

Manual review follows, ensuring each panel:

- Uses the appropriate replacement (e.g., Time series instead of Graph).
- Is styled for clarity with correct units, thresholds, and display modes.
- Makes full use of Grafana v11's capabilities such as `value_and_name` mode in Stat panels and dynamic thresholds.

---

## 📝 Documentation & Future Support

Alongside the dashboard upgrades, the project will deliver a comprehensive **migration guide**. This includes:

- Identifying and replacing deprecated elements
- Refactoring panel JSON schemas
- Testing dashboards with real-time data
- Organizing dashboards with proper versioning
- Guidelines for maintaining dashboards in future Grafana versions

---

## 🔗 Links

- 📄 [Proposal PDF](https://github.com/Gaurav05082002/PostgreSQL_GSOC/blob/main/Postgre%20SQL%20GSOC%20Proposal.pdf)  
- 💻 [GitHub Repository (Demo & Updates)](https://github.com/Gaurav05082002/PostgreSQL_GSOC)

---

Thank you for reading! I’m looking forward to contributing to the PostgreSQL community this summer and sharing progress as we go. Feedback and suggestions are always welcome.

– **Gaurav**  
*GSoC 2025 Contributor | IIT Kharagpur*

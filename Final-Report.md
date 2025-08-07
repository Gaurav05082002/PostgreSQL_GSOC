# GSoC 2025 Project Report
<div align="center">
<img src="./Blogs/postgresql.png" width="200"/><img src="./Blogs/gsoc.png" width="200"/> 
</div>

## Upgrade pgwatch Grafana dashboards to v12

**Contributor**: [Gaurav Patidar](https://github.com/Gaurav05082002)

**Organisation**: [PostgreSQL](https://postgresql.org)

**Mentors**: [Pavlo Golub](https://github.com/pashagolub), [Rajiv Harlalka](https://github.com/rajivharlalka)

**Project Repository**: [pgwatch_grafana](https://github.com/cybertec-postgresql/pgwatch/tree/master)

**Project Proposal**: [Proposal](https://github.com/Gaurav05082002/PostgreSQL_GSOC/blob/main/GSoC%E2%80%9925%20Proposal%20PostgreSQL%20upgrade%20grafana%20dashboards%20to%20v11.pdf)

## Project Overview

This project focuses on upgrading the existing pgwatch Grafana dashboards to ensure full compatibility with the latest Grafana version 12. While some dashboards have already been partially migrated, many still rely on outdated components and need manual refinement to ensure optimal performance. Grafana v11 introduced significant changes, including the removal of AngularJS support and updates to panel JSON structures and transformation capabilities. With the release of Grafana v12, further enhancements and updates have been made, making it crucial to migrate all dashboards to take full advantage of the new visualization features and capabilities.

The primary objective of this project is to update the dashboards, ensuring they are fully functional with Grafana v12, while also improving usability and maintaining high performance. This involves not only updating the visualization elements to align with the new version but also addressing any deprecated components and optimizing the dashboards for smoother user experience. In addition to the technical upgrades, the project will also include comprehensive documentation to guide future maintenance and ensure ease of future updates. This approach will ensure the longevity and continued efficiency of the dashboards in a rapidly evolving Grafana ecosystem.

## Project Deliverables

- Replace deprecated AngularJS components in Grafana dashboards for v12 compatibility.
- Refactor panel JSON structures to align with Grafana v12 schema.
- Integrate advanced data transformations (field overrides, dynamic thresholds).
- Improve dashboard layouts, ensuring consistency in design, color schemes, and tooltips.
- Test dashboards with live PostgreSQL workload data to validate rendering.
- Export upgraded dashboards under a v12/ directory for PostgreSQL and Prometheus.
- Document the migration process, including common issues, fixes, and future upgrade guidelines.

## Project Results

### How We Addressed the Migration to Grafana v12
We began by configuring the Grafana v12 environment, updating the Docker image to grafana/grafana:12.0.0, and setting up a dedicated directory for v12 dashboards. 
To facilitate the migration of our Grafana dashboards to v12, one of the key tasks was to replace deprecated AngularJS components. In Grafana v11, AngularJS-based components were still supported, but with the removal of AngularJS support in v12, it became crucial to update these components. We developed a Python script that scans multiple dashboard JSON files to identify any legacy AngularJS components. The script logs each deprecated usage along with its associated panel title, allowing for a systematic review and cleanup.

### Deprecated AngularJS Components and Their Replacements for Grafana v12

| Deprecated AngularJS Component        | Recommended Replacement for Grafana v12                               |
|--------------------------------------|----------------------------------------------------------------------|
| Text panel using HTML (AngularJS)    | Text panel (mode: Markdown) or Stat panel if numeric                  |
| Deprecated panel type: singlestat    | Stat panel                                                          |
| Deprecated panel type: graph         | Use of yaxes, lines, fill properties                                 |
| Custom HTML in old panels            | Rewrite using Markdown or transparent Stat panels with tooltips     |
| Legacy transformations inside queries| Use Grafana transformations like merge, reduce, add field           |
| Time series panel                    | Use fieldConfig and options in panel JSON structure                  |

###  JSON Refinement of dashboards as per v12 

We simulated the data via a test database and used commands to simulate panels in the dashboard. We thoroughly checked the empty panels and updated their configurations to make them work with the new Grafana v12 format. After making necessary changes to the JSON structure, we saved the updated JSON files for both PostgreSQL and Prometheus dashboards in the `v12` folder of the repository.


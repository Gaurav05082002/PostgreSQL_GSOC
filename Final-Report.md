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


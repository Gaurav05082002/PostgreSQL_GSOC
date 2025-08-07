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

### Issue with JSONB Null Casting in Grafana Queries

In PostgreSQL, when using the `jsonb` data type, issues arise when trying to cast `jsonb` objects to numeric types. Specifically, when querying Grafana dashboards, the query used the operator `data->'load_5min'` to retrieve the `load_5min` value. However, `data->'load_5min'` returns a `jsonb` object, and PostgreSQL does not allow direct casting from a `jsonb` object to a numeric type like `float8`. This caused errors, particularly when the `load_5min` key was missing or had a `null` value.

To fix the issue, we updated the query to use `data->>'load_5min'` instead of `data->'load_5min'`. The operator `data->>'load_5min'` returns a **text** value, which can be safely cast to numeric types like `float8`. This modification ensures that the query works even when `load_5min` is missing or `null`, preventing casting errors.

The update was applied across all relevant dashboards to standardize the query and handle the casting errors. Below is an example of the change made:

#### Before:
```json
"rawSql": "SELECT\n  $__timeGroup(time, $__interval),\n  avg((data->'load_5min')::float8) as \"load_5min\"\nFROM\n  cpu_load\nWHERE\n  $__timeFilter(time)\n  AND dbname = '$dbname'\nGROUP BY 1\nORDER BY 1"
```
#### After:
```json
"rawSql": "SELECT\n  $__timeGroup(time, $__interval),\n  avg((data->>'load_5min')::float8) as \"load_5min\"\nFROM\n  cpu_load\nWHERE\n  $__timeFilter(time)\n  AND dbname = '$dbname'\nGROUP BY 1\nORDER BY 1"
```

# Contributions

|Commit/PR|Description|
|---|---|
|[Merged PR: #822](https://github.com/cybertec-postgresql/pgwatch/pull/822)|updating grafana postgres dashboards to v-12|
|[Merged PR: #805](https://github.com/cybertec-postgresql/pgwatch/pull/805)|updating Grafana dashboards for v12|
|[Merged PR: #832](https://github.com/cybertec-postgresql/pgwatch/pull/832)|grafana/prometheus dashboards updated to v12|
|[Merged PR: #842](https://github.com/cybertec-postgresql/pgwatch/pull/842)|[!] add Grafana v12 support|
|[Merged PR: #856](https://github.com/cybertec-postgresql/pgwatch/pull/856)|[-] fix jsonb issue for v12 dashboards, closes #783|
|[Closed Issue: #801](https://github.com/cybertec-postgresql/pgwatch/issues/801)|fix Query ID representation in Stat statements Top v12 dashboard|
|[Closed Issue: #802](https://github.com/cybertec-postgresql/pgwatch/issues/802)|deprecate "AWS CloudWatch overview" dashboard|
|[Closed Issue: #803](https://github.com/cybertec-postgresql/pgwatch/issues/803)|deprecate "Documentation" dashboard|
|[Closed Issue: #783](https://github.com/cybertec-postgresql/pgwatch/issues/783)|some dashboards show "cannot cast jsonb null to type..." error|
|[Closed Issue: #879](https://github.com/cybertec-postgresql/pgwatch/issues/879)|Docker-compose issues when building a project|

### Future Works

Fix the "Offline Nodes" panel in the "Global Health" dashboard, which currently outputs an error message (`relation "pgbouncer_stats" does not exist`) when no `pgbouncer` metrics are present in the data source. The solution involves adding a check to ensure that the `pgbouncer_stats` table exists before querying it and implementing error handling to prevent the dashboard from breaking when these metrics are unavailable.

# Conclusion

I am happy to have successfully achieved most of the goals set for this project. Working on this project has been an incredible learning experience. It has provided me with the opportunity to contribute to the open-source community, a space that initially felt overwhelming but now feels more approachable and clear. I’ve gained a deeper understanding of working on large codebases, tackling complex issues, and collaborating with talented individuals.

The chance to participate in Google Summer of Code has been an invaluable opportunity. It allowed me to grow as a developer while contributing to an amazing organization. I am grateful for the opportunity to contribute to the community, which has been instrumental in my progress.

I look forward to continuing to contribute and improving my skills as I further explore open-source development.
# Acknowledgement

I am deeply grateful to my mentors, **[Pavlo Golub](https://github.com/pashagolub)** and **[Rajiv Harlalka](https://github.com/rajivharlalka)**, for their unwavering support, insightful guidance, and encouragement throughout this project. Their expertise and patience have been invaluable in helping me overcome challenges and achieve the goals of this project.

I would also like to thank the open-source community for being a constant source of inspiration and for providing valuable feedback and advice throughout the journey.

Thanks to Google and the PostgreSQL community for offering me the incredible opportunity to contribute to this project. It has been an enriching learning experience, and I look forward to continuing my contributions to the open-source ecosystem in the future.



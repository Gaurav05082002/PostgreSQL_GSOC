# Script and Result for Auto-Migrated Dashboards v11

For more details, please see the [v11 dashboards on GitHub](https://github.com/cybertec-postgresql/pgwatch/tree/master/grafana/postgres/v11).

---

## Script

**Description:**  
This Python script scans all `.json` dashboard files in a specified folder to find any **deprecated panel types** (`singlestat`, `graph`) and **Text panels still using AngularJS** (HTML mode). It then prints the results, including any panels that use those deprecated features.

```python
import json
from pathlib import Path

# Deprecated types and markers
DEPRECATED_TYPES = {"singlestat", "graph"}
TEXT_PANEL_WITH_HTML = ("text", "html")

def check_dashboard(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        data = json.load(f)
    deprecated_panels = []
    for panel in data.get("panels", []):
        panel_type = panel.get("type", "")
        title = panel.get("title", "Untitled")
        # Check for deprecated panel types
        if panel_type in DEPRECATED_TYPES:
            deprecated_panels.append((title, f"Deprecated panel type: {panel_type}"))
        # Check for old HTML text mode
        elif panel_type == TEXT_PANEL_WITH_HTML[0]:
            mode = panel.get("mode") or panel.get("options", {}).get("mode")
            if mode == TEXT_PANEL_WITH_HTML[1]:
                deprecated_panels.append((title, "Text panel using HTML (AngularJS)"))

    return deprecated_panels

def scan_dashboards(folder_path):
    folder = Path(folder_path)
    json_files = list(folder.glob("*.json"))
    if not json_files:
        print("No JSON files found in the folder.")
        return
    for json_file in json_files:
        findings = check_dashboard(json_file)
        if findings:
            print(f"\nDashboard: {json_file.name}")
            for title, issue in findings:
                print(f"  - Panel: '{title}' → {issue}")
        else:
            print(f"\nDashboard: {json_file.name}")
            print("  No deprecated AngularJS components found.")

if __name__ == "__main__":
    dashboards_folder = "/content/drive/MyDrive/v11"
    scan_dashboards(dashboards_folder)
```

## Result for Auto-Migrated Dashboards v11

```json
Dashboard: index-overview.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: db-overview.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: single-query-details.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: show-plans-realtime.json
 - Panel: '' → Text panel using HTML (AngularJS)

Dashboard: system-stats-time-lag.json
 - Panel: 'CPU utilization' → Deprecated panel type: graph
 - Panel: 'IO Wait' → Deprecated panel type: graph
 - Panel: 'Memory used (%)' → Deprecated panel type: graph
 - Panel: 'Memory available' → Deprecated panel type: graph
 - Panel: 'Swap used (%)' → Deprecated panel type: graph
 - Panel: 'Total bytes read per second' → Deprecated panel type: graph
 - Panel: 'Total bytes written per second' → Deprecated panel type: graph

Dashboard: pgbouncer-stats.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: pgpool-stats.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: table-details.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: stat-activity-realtime.json
 No deprecated AngularJS components found.

Dashboard: stat-statements-top-fast.json
 - Panel: '' → Text panel using HTML (AngularJS)
 - Panel: '' → Deprecated panel type: singlestat

Dashboard: sproc-details.json
 - Panel: 'Avg. runtime ($agg_interval avg.)' → Deprecated panel type: graph

Dashboard: health-check.json
 - Panel: 'Instance state' → Deprecated panel type: singlestat
 - Panel: 'Instance uptime' → Deprecated panel type: singlestat
 - Panel: 'PG version num.' → Deprecated panel type: singlestat
 - Panel: 'Longest query runtime' → Deprecated panel type: singlestat
 - Panel: 'Active connections' → Deprecated panel type: singlestat
 - Panel: 'Max. connections' → Deprecated panel type: singlestat
 - Panel: 'Blocked sessions' → Deprecated panel type: singlestat
 - Panel: 'Shared Buffers hit pct.' → Deprecated panel type: singlestat
 - Panel: 'TX rollback pct. (avg.)' → Deprecated panel type: singlestat
 - Panel: 'TPS (avg.)' → Deprecated panel type: singlestat
 - Panel: 'QPS (avg.)' → Deprecated panel type: singlestat
 - Panel: '"Idle in TX" count' → Deprecated panel type: singlestat
 - Panel: 'DB size (last)' → Deprecated panel type: singlestat
 - Panel: 'DB size change (diff.)' → Deprecated panel type: singlestat
 - Panel: 'DATADIR disk space left' → Deprecated panel type: singlestat
 - Panel: 'Query runtime (avg.)' → Deprecated panel type: singlestat
 - Panel: 'Config change events' → Deprecated panel type: singlestat
 - Panel: 'Table changes' → Deprecated panel type: singlestat
 - Panel: 'WAL archiving status' → Deprecated panel type: singlestat
 - Panel: 'WAL folder size' → Deprecated panel type: singlestat
 - Panel: 'Invalid / duplicate indexes' → Deprecated panel type: singlestat
 - Panel: 'Autovacuum issues' → Deprecated panel type: singlestat
 - Panel: 'Checkpoints requested' → Deprecated panel type: singlestat
 - Panel: 'Approx. table bloat' → Deprecated panel type: singlestat
 - Panel: 'WAL per second (avg.)' → Deprecated panel type: singlestat
 - Panel: 'Temp. bytes per second (avg.)' → Deprecated panel type: singlestat
 - Panel: 'Longest AUTOVACUUM duration' → Deprecated panel type: singlestat
 - Panel: 'Seq. scans on >100 MB tables per minute (avg.)' → Deprecated panel type: singlestat
 - Panel: 'INSERT-s per minute (avg.)' → Deprecated panel type: singlestat
 - Panel: 'UPDATE-s per minute (avg.)' → Deprecated panel type: singlestat
 - Panel: 'DELETE-s per minute (avg.)' → Deprecated panel type: singlestat
 - Panel: 'Backup duration' → Deprecated panel type: singlestat
 - Panel: 'Max. table FREEZE age' → Deprecated panel type: singlestat
 - Panel: 'Max. XMIN horizon age' → Deprecated panel type: singlestat
 - Panel: 'Inactive repl. slots' → Deprecated panel type: singlestat
 - Panel: 'Max. replication lag' → Deprecated panel type: singlestat
 - Panel: '' → Text panel using HTML (AngularJS)
 - Panel: '' → Text panel using HTML (AngularJS)

Dashboard: system-stats.json
 - Panel: 'System load ($agg_interval avg.)' → Deprecated panel type: graph
 - Panel: 'CPU utilization % ($agg_interval avg.)' → Deprecated panel type: graph
 - Panel: 'CPU usage distribution ($agg_interval avg.)' → Deprecated panel type: graph
 - Panel: 'Memory usage ($agg_interval avg.)' → Deprecated panel type: graph
 - Panel: 'Swap usage ($agg_interval avg.)' → Deprecated panel type: graph
 - Panel: 'Host disk IO Totals ($agg_interval aggregate)' → Deprecated panel type: graph
 - Panel: 'Disk usage %' → Deprecated panel type: graph
 - Panel: 'Disk space available' → Deprecated panel type: graph
 - Panel: '' → Text panel using HTML (AngularJS)

Dashboard: stat-statements-top-visual.json
 - Panel: 'Top $top queries by calls' → Deprecated panel type: graph
 - Panel: 'Top $top queries by total time' → Deprecated panel type: graph
 - Panel: '' → Text panel using HTML (AngularJS)

Dashboard: postgres-version-overview.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: tables-top.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: aws-cloudwatch.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: server-log-events.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: db-overview-developer.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: change-events.json
 No deprecated AngularJS components found.

Dashboard: documentation.json
 - Panel: '' → Text panel using HTML (AngularJS)

Dashboard: biggest-relations.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: db-overview-time-lag.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: global-health.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: recommendations.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: stat-activity.json
 No deprecated AngularJS components found.

Dashboard: sprocs-top.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: lock-details.json
 No deprecated AngularJS components found.

Dashboard: 1-global-db-overview.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: table-details-time-lag.json
 No deprecated AngularJS components found.

Dashboard: stat-statements-sql-search.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: stat-statements-top.json
 - Panel: '' → Text panel using HTML (AngularJS)

Dashboard: sessions-overview.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: checkpointer-bgwriter-stats.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)

Dashboard: replication.json
 - Panel: 'Untitled' → Text panel using HTML (AngularJS)



A 
checklist to remove angular based components 
,tick marked means that angular based components are removed


📊 Dashboard: server-log-events.json
  - [ ] Panel: 'Top ERROR generating DBs' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top FATAL generating instances' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: aws-cloudwatch.json
  - [ ] Panel: 'CPU load %' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Write IO' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Read IO' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Connections' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Free RAM' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Free disk' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: change-events.json
  - [ ] Panel: 'Table changes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Index changes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Sproc changes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Config changes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Login and superuser role changes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Privilege changes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Settings' → Deprecated panel type: 'table' → Use 'table'

📊 Dashboard: db-overview-developer.json
  - [ ] Panel: 'Instance state' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Instance uptime' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'TPS' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'QPS' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Query runtime' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Sessions' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Temp bytes 1h avg. rate' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Tuples fetched vs returned' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: sproc-details.json
  - [ ] Panel: 'Avg. runtime ($agg_interval avg.)' → Deprecated panel type: 'graph' → Use 'timeseries'

📊 Dashboard: postgres-version-overview.json
  - [ ] Panel: 'Monitored DBs by version' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: stat-statements-top-fast.json
  - [ ] Panel: 'Top queries by total runtime' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top queries by avg. runtime' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top queries by calls' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top queries by CPU time' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top queries by direct (backend) IO' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top by block bandwith (assuming 8K blocks)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top by temp blocks (assuming 8K blocks)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: '' → Text panel using HTML (AngularJS)
  - [ ] Panel: '' → Deprecated panel type: 'singlestat' → Use 'stat'

📊 Dashboard: health-check.json
  - [ ] Panel: 'Instance state' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Instance uptime' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'PG version num.' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Longest query runtime' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Active connections' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Max. connections' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Blocked sessions' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Shared Buffers hit pct.' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'TX rollback pct. (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'TPS (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'QPS (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: '"Idle in TX" count' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'DB size (last)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'DB size change (diff.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'DATADIR disk space left' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Query runtime (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Config change events' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Table changes' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'WAL archiving status' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'WAL folder size' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Invalid / duplicate indexes' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Autovacuum issues' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Checkpoints requested' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Approx. table bloat' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'WAL per second (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Temp. bytes per second (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Longest AUTOVACUUM duration' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Seq. scans on >100 MB tables per minute (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'INSERT-s per minute (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'UPDATE-s per minute (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'DELETE-s per minute (avg.)' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Backup duration' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Max. table FREEZE age' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Max. XMIN horizon age' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Inactive repl. slots' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: 'Max. replication lag' → Deprecated panel type: 'singlestat' → Use 'stat'
  - [ ] Panel: '' → Text panel using HTML (AngularJS)
  - [ ] Panel: '' → Text panel using HTML (AngularJS)

📊 Dashboard: stat-statements-top-visual.json
  - [ ] Panel: 'Top $top queries by calls' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Top $top queries by total time' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: '' → Text panel using HTML (AngularJS)

📊 Dashboard: system-stats.json
  - [ ] Panel: 'System load ($agg_interval avg.)' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'CPU utilization % ($agg_interval avg.)' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'CPU usage distribution ($agg_interval avg.)' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Memory usage ($agg_interval avg.)' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Swap usage ($agg_interval avg.)' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Host disk IO Totals ($agg_interval aggregate)' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Disk usage %' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Disk space available' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: '' → Text panel using HTML (AngularJS)

📊 Dashboard: tables-top.json
  - [ ] Panel: 'Biggest (total)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Biggest (data)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Biggest growth (total relation size)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Most "seq. scans"  (tables > 100MB )' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Most INSERT-s (aggregate over selected time period)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Most UPDATE-s (aggregate over selected time period)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Most DELETE-s (aggregate over selected time period)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Most block IO reads' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)
  - [ ] Panel: 'Untitled' → Deprecated panel type: 'stat' → Use 'stat'

📊 Dashboard: table-details.json
  - [ ] Panel: 'Time since last VACUUM' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Time since last ANALYZE' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: pgpool-stats.json
  - [ ] Panel: 'Pool node status' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: stat-activity-realtime.json
  - [ ] Panel: 'Stat Activity' → Deprecated panel type: 'table' → Use 'table'

📊 Dashboard: show-plans-realtime.json
  - [ ] Panel: 'Realtime execution plans' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: '' → Text panel using HTML (AngularJS)

📊 Dashboard: system-stats-time-lag.json
  - [ ] Panel: 'CPU utilization' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'IO Wait' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Memory used (%)' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Memory available' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Swap used (%)' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Total bytes read per second' → Deprecated panel type: 'graph' → Use 'timeseries'
  - [ ] Panel: 'Total bytes written per second' → Deprecated panel type: 'graph' → Use 'timeseries'

📊 Dashboard: pgbouncer-stats.json
  - [ ] Panel: 'TPS' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'QPS' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Avg. query runtime' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Pool wait time' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Incoming traffic' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Outgoing traffic' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: single-query-details.json
  - [ ] Panel: 'SQL' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: db-overview.json
  - [ ] Panel: 'Instance state' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Instance uptime' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'TPS' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'QPS' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Query runtime' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'DB size ch. 1h' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Approx Table Bloat' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Tuples fetched vs returned' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: index-overview.json
  - [ ] Panel: 'Duplicate indexes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Unused indexes (Non-PK)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Invalid indexes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top 20 biggest indexes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: stat-statements-top.json
  - [ ] Panel: 'Top queries by total runtime' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top queries by avg. runtime' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top queries by calls' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top queries by direct (backend) IO' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top by block bandwith (assuming 8K blocks)' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: '' → Text panel using HTML (AngularJS)

📊 Dashboard: stat-statements-sql-search.json
  - [ ] Panel: 'Matching Queries' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: replication.json
  - [ ] Panel: 'Inactive repl. slots' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Active repl. slots' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Active replicas' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Active "sync" replicas' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Slot max. restart_lsn lag' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Max. write lag' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Max. flush lag' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Max. replay lag' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: checkpointer-bgwriter-stats.json
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

✅ Dashboard: lock-details.json has no deprecated panels.

📊 Dashboard: biggest-relations.json
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: sprocs-top.json
  - [ ] Panel: 'By Total Runtime' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'By Total Self Runtime' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'By Calls' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'By Avg. Runtime' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'By Avg. Self Runtime' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: recommendations.json
  - [ ] Panel: 'Overusage of SUPERUSER' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Overly long queries' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Possible AUTOVACUUM problems' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'SECURITY DEFINER without fixed "search_path"' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'PUBLIC schemas with default privileges' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Possibly missing indexes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Unused indexes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Partial index suggestions' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Deeply nested views' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Checkpoints requested too often' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

✅ Dashboard: table-details-time-lag.json has no deprecated panels.

📊 Dashboard: documentation.json
  - [ ] Panel: '' → Text panel using HTML (AngularJS)

📊 Dashboard: stat-activity.json
  - [ ] Panel: 'Stat Activity' → Deprecated panel type: 'table-old' → Use 'table'

📊 Dashboard: 1-global-db-overview.json
  - [ ] Panel: 'TPS' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'QPS' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Query runtime' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Total DB size ch.' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Total table bloat ch. (approx.)' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'CPU Load Avg.' → Deprecated panel type: 'stat' → Use 'stat'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: sessions-overview.json
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: global-health.json
  - [ ] Panel: 'Offline nodes' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top $top_limit by TX rollback %' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top $top_limit by longest TX time' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top $top_limit by blocked sessions' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top $top_limit by used connections' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top $top_limit by temp. files' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top $top_limit by replication lag' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Lowest $top_limit by free disk %' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top $top_limit by CPU utilization %' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Top $top_limit by WAL folder size' → Deprecated panel type: 'table' → Use 'table'
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

📊 Dashboard: db-overview-time-lag.json
  - [ ] Panel: 'Untitled' → Text panel using HTML (AngularJS)

// Before (Deprecated singlestat):
{
    "type": "singlestat",
    "title": "Avg Query Time (ms)",
    "format": "ms",
    "thresholds": "10,50"
  }
//   After (Modern stat):
{
    "type": "stat",
    "title": "Avg Query Time (ms)",
    "fieldConfig": {
      "defaults": {
        "unit": "ms",
        "decimals": 2,
        "thresholds": {
          "mode": "absolute",
          "steps": [
            { "color": "green", "value": null },
            { "color": "orange", "value": 50 },
            { "color": "red", "value": 100 }
          ]
        }
      }
    },
    "options": {
      "textMode": "value_and_name",
      "colorMode": "background"
    }
  }
  

SELECT DISTINCT tag_data->>'queryid'
FROM stat_statements WHERE time > current_date - 3 AND dbname = '$dbname' ORDER BY 1;

SELECT DISTINCT (tag_data->>'queryid') || ' - ' || LEFT(tag_data->>'query', 60) AS __text,
  tag_data->>'queryid' AS __value FROM stat_statements WHERE time > current_date - 3
  AND dbname = '$dbname' ORDER BY 1;

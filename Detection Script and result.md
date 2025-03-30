# Run Script Result for Auto-Migrated Dashboards v11

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

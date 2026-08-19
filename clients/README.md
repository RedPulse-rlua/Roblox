Collection of legacy Roblox client source repos, synced by the GitHub Actions workflow (`.github/workflows/sync-clients.yml`).

## How to run

1. Open the **Actions** tab.
2. Select **Sync Client Sources**.
3. Click **Run workflow** -> **Run workflow**.

All repos are shallow-cloned (`.git` stripped) into `clients/`, named `owner__repo`.
Results are written to `clients/audit.txt`.
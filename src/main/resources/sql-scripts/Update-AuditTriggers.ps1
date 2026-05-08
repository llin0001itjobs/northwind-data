# ===================================================================
# PowerShell Script: Update Audit Triggers to Include column_name
# ===================================================================
# 
# WHAT IT DOES:
# - Scans all .sql files in a folder (and subfolders)
# - Finds every INSERT INTO audit_central statement inside triggers
# - Adds `column_name` to the column list
# - Adds `NULL` for column_name in the VALUES clause
# - Works with the exact formatting in your dump (and similar variations)
# - Leaves the CREATE TABLE audit_central and data dumps untouched
# 
# IMPORTANT:
# 1. BACK UP YOUR SQL FILES FIRST!
# 2. The update triggers currently reference `date_updated` (which doesn't exist in your table).
#    This script does NOT change that — it only adds column_name as you requested.
#    You may want to fix `date_updated` → `date_created` manually or in a follow-up script.
# 
# USAGE:
#   1. Save this as Update-AuditTriggers.ps1
#   2. Open PowerShell and run:
#      .\Update-AuditTriggers.ps1 -Directory "C:\Path\To\Your\SQL\Files"
#      (or just run it in the folder: .\Update-AuditTriggers.ps1)

param(
    [Parameter(Mandatory=$false)]
    [string]$Directory = "."
)

# Get all .sql files (recursive)
$sqlFiles = Get-ChildItem -Path $Directory -Recurse -Include *.sql -File

if ($sqlFiles.Count -eq 0) {
    Write-Host "No .sql files found in $Directory" -ForegroundColor Yellow
    exit
}

Write-Host "Found $($sqlFiles.Count) SQL file(s). Updating triggers..." -ForegroundColor Green

foreach ($file in $sqlFiles) {
    Write-Host "  Processing: $($file.Name)" -ForegroundColor Cyan
    
    # Read entire file as one string (necessary for multi-line triggers)
    $content = Get-Content -Path $file.FullName -Raw
    
    # 1. Update column list: add column_name after table_name
    #    Handles both "date_created" and "date_updated" (and any whitespace)
    $content = $content -replace '\(\s*id\s*,\s*action\s*,\s*table_name\s*,\s*(date_created|date_updated)\s*\)', '(id,action,table_name,column_name,$1)'
    
    # 2. Update VALUES clause: insert NULL for the new column_name
    #    Matches ", NOW()" (with or without spaces) and turns it into ", NULL, NOW()"
    $content = $content -replace ',\s*NOW\(\)', ', NULL, NOW()'
    
    # Write updated content back (preserves original encoding and line endings as much as possible)
    Set-Content -Path $file.FullName -Value $content -NoNewline -Encoding UTF8
    
    Write-Host "    ✓ Updated" -ForegroundColor Green
}

Write-Host "`nAll done! All triggers now include the column_name column." -ForegroundColor Green
Write-Host "Backup your files before running this in production." -ForegroundColor Yellow
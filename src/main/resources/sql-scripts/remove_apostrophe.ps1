$pattern = '`'
$path = "D:\Documents\eclipse-workspace\northwind-data\src\main\resources\sql-scripts\*.sql"
$content = Get-Content $path
$newContent = $content -replace $pattern, ""
Set-Content $path $newContent

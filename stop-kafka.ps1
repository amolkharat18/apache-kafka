# Find and stop Kafka process
Write-Host "Stopping Kafka..."
Get-Process | Where-Object { $_.ProcessName -match "java" -and $_.MainWindowTitle -match "kafka.Kafka" } | ForEach-Object { Stop-Process -Id $_.Id -Force }

# Find and stop ZooKeeper process
Write-Host "Stopping ZooKeeper..."
Get-Process | Where-Object { $_.ProcessName -match "java" -and $_.MainWindowTitle -match "org.apache.zookeeper.server" } | ForEach-Object { Stop-Process -Id $_.Id -Force }

Write-Host "Kafka and ZooKeeper have been stopped."

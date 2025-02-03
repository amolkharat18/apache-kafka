# Define Kafka installation directory (Update this path as per your setup)
$KAFKA_HOME = "C:\kafka"

# Start Zookeeper as a background process
Write-Host "Starting Zookeeper..."
Start-Process -FilePath "cmd.exe" -ArgumentList "/c start $KAFKA_HOME\bin\windows\zookeeper-server-start.bat $KAFKA_HOME\config\zookeeper.properties" -WindowStyle Minimized

Start-Sleep -Seconds 10  # Wait for Zookeeper to initialize

# Start Kafka Broker as a background process
Write-Host "Starting Kafka Broker..."
Start-Process -FilePath "cmd.exe" -ArgumentList "/c start $KAFKA_HOME\bin\windows\kafka-server-start.bat $KAFKA_HOME\config\server.properties" -WindowStyle Minimized

Write-Host "Kafka started successfully!"

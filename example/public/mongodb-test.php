<?php
/**
 * MongoDB Connection Example
 * 
 * Demonstrates connecting to MongoDB
 */

try {
    $host = getenv('MONGODB_HOST') ?: 'mongodb';
    $port = getenv('MONGODB_PORT') ?: 27017;
    
    $manager = new MongoDB\Driver\Manager("mongodb://$host:$port");
    
    // Test connection with a ping command
    $command = new MongoDB\Driver\Command(['ping' => 1]);
    $cursor = $manager->executeCommand('admin', $command);
    $response = $cursor->toArray()[0];
    
    echo "✓ MongoDB connection successful!\n";
    echo "Ping response: " . json_encode($response) . "\n";
    
    // List databases
    $command = new MongoDB\Driver\Command(['listDatabases' => 1]);
    $cursor = $manager->executeCommand('admin', $command);
    $databases = $cursor->toArray()[0];
    
    echo "Available databases: " . count($databases->databases) . "\n";
    
} catch (Exception $e) {
    echo "✗ MongoDB connection failed: " . $e->getMessage() . "\n";
}
?>

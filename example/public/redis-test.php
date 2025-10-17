<?php
/**
 * Redis Connection Example
 * 
 * Demonstrates connecting to Redis
 */

try {
    $redis = new Redis();
    $host = getenv('REDIS_HOST') ?: 'redis';
    $port = getenv('REDIS_PORT') ?: 6379;
    
    $redis->connect($host, $port);
    
    // Test set and get
    $redis->set('test_key', 'Hello from Redis!');
    $value = $redis->get('test_key');
    
    echo "✓ Redis connection successful!\n";
    echo "Test value: $value\n";
    echo "Redis version: " . $redis->info()['redis_version'] . "\n";
    
} catch (Exception $e) {
    echo "✗ Redis connection failed: " . $e->getMessage() . "\n";
}
?>

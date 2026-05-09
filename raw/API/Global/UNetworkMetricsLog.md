### UNetworkMetricsLog


A metrics listener that prints stats to a log statement at a fixed frequency to the LogNetworkMetrics log category.

To use UNetworkMetricsLog in a configuration file, the class must be used when registering a listener:

[/Script/Engine.NetworkMetricsConfig]
+Listeners=(MetricName=ExampleMetric, ClassName=/Script/Engine.NetworkMetricsLog)

Additionally, the following log category must be set:

[Core.Log]
LogNetworkMetrics=Log
---


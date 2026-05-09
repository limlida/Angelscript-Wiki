### UTcpMessagingSettings


**属性**:

- `TArray<FString> ConnectToEndpoints [The IP endpoints to try to establish outgoing connection to.

Use this setting to connect to a remote peer.
The format is IP_ADDRESS:PORT_NUMBER.]`
- `int ConnectionRetryDelay [Delay time between attempts to re-establish outgoing connections that become disconnected or fail to connect
0 disables reconnection]`
- `int ConnectionRetryPeriod [Period time during which attempts to re-establish outgoing connections that become disconnected or fail to connect
0 means it will be retried only once]`
- `bool EnableTransport [Whether the TCP transport channel is enabled]`
- `FString ListenEndpoint [The IP endpoint to listen for incoming connections.

The format is IP_ADDRESS:PORT_NUMBER or blank to disable listening.]`

---


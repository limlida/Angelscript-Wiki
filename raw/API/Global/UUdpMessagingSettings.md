### UUdpMessagingSettings


**属性**:

- `uint AutoRepairAttemptLimit [The number of consecutive attempt the auto repair routine will try to repair.]`
- `float32 ConnectionTimeoutPeriod [The period of time to consider an active connection to be timed-out. A regular heart beat is expected from connected endpoints and this will
expire that connection if no data is received after a period of time.  If zero is specified the endpoints are never timed out (this should
only be used for debugging purposes).]`
- `bool EnableTransport [Whether the UDP transport channel is enabled.
Can be specified on the command line with `-UDPMESSAGING_TRANSPORT_ENABLE=`]`
- `bool EnableTunnel [Whether the UDP tunnel is enabled.]`
- `bool EnabledByDefault [Whether UDP messaging is enabled by default. If false -messaging will need to be added
to the commandline when running non-editor builds.

(Note - in Shipping builds ALLOW_UDP_MESSAGING_SHIPPING=1 must also be defined in TargetRules
for messaging to be available with or without this setting)]`
- `TArray<FString> ExcludedEndpoints [List of IP addresses that are banned from communicating with this client. Wildcard IPv4 addresses can be specified by using '*' and '?'
characters.

For example, 192.168.12.* will deny all addresses on the .12 subnet for the class C network.
The string 192.16?.12.10 will deny all addresses in the range 192.160.12.10-192.169.12.10.

The format is IP_ADDRESS:PORT_NUMBER.  If port number is 0 then all ports are blocked.]`
- `uint MaxConcurrentDeserializationTasks [Maximum number of deserialization tasks that can be performed in parallel. A value of 0 or 1 means that concurrent
deserialization is disabled, which will make the message processor behave similar to releases pre-5.6.]`
- `float32 MaxSendRate [Maximum sustained transmission rate in Gbit / s.

The default value is 1 Gbit/s.

This is to control transmission of larger packages over the network. Without a limit, it is
possible for packet data loss to occur because more data may be sent then may be supported
by your network card.

Adjust this value higher or lower depending on your network capacity.]`
- `EUdpMessageFormat MessageFormat [The format used to serialize the UDP message payload.]`
- `FString MulticastEndpoint [The IP endpoint to send multicast packets to.

The format is IP_ADDRESS:PORT_NUMBER.
The multicast IP address must be in the range 224.0.0.0 to 239.255.255.255.
Can be specified on the command line with `-UDPMESSAGING_TRANSPORT_MULTICAST=`]`
- `uint8 MulticastTimeToLive [The time-to-live (TTL) for sent multicast packets.]`
- `float32 ReliableQueuePriority [Reliable queue priority specified as a percentage with a range from 5-95%. Setting values above or below
can completely starve unreliable messages.]`
- `TArray<FString> RemoteTunnelEndpoints [The IP endpoints of remote tunnel nodes.

Use this setting to connect to remote tunnel services.
The format is IP_ADDRESS:PORT_NUMBER.]`
- `TArray<FString> StaticEndpoints [The IP endpoints of static devices.

Use this setting to reach devices on other subnets, such as mobile phones on a WiFi network.
The format is IP_ADDRESS:PORT_NUMBER.]`
- `FString TunnelMulticastEndpoint [The IP endpoint to send multicast packets to.

The format is IP_ADDRESS:PORT_NUMBER.
The multicast IP address must be in the range 224.0.0.0 to 239.255.255.255.]`
- `FString TunnelUnicastEndpoint [The local IP endpoint to listen to and send packets from.

The format is IP_ADDRESS:PORT_NUMBER.]`
- `FString UnicastEndpoint [The IP endpoint to listen to and send packets from.

The format is IP_ADDRESS:PORT_NUMBER.
0.0.0.0:0 will bind to the default network adapter on Windows,
and all available network adapters on other operating systems.
Specifying an interface IP here, will use that interface for multicasting and static endpoint *might* also reach this client through <unicast ip:multicast port>
Specifying both the IP and Port will allow usage of static endpoint to reach this client
Can be specified on the command line with `-UDPMESSAGING_TRANSPORT_UNICAST=`]`
- `uint16 WorkQueueSize [The buffer size for the working send queues. Each node connections
gets a send queue and new messages to send are put on that queue.  The send
scheduler will fairly send data on this queue and re-queue when partial data is
sent or waiting for a reliable message. Can be specified on the command line with
`-UDPMESSAGING_WORK_QUEUE_SIZE=`]`
- `bool bAutoRepair [Whether the UDP transport channel should try to auto repair when in error.]`
- `bool bShareKnownNodesWithActiveConnections [Whether to share our list of known endpoints with those endpoints.  This allows message processors to completely mesh their networks.]`

---


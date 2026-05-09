### FNetworkEmulationPacketSettings


**属性**:

- `int MaxLatency [Maximum latency to add to packets. We use a random value between the minimum and maximum (when 0 = always the minimum value)]`
- `int MinLatency [Minimum latency to add to packets]`
- `int PacketLossPercentage [Ratio of packets to randomly drop (0 = none, 100 = all)]`


**方法**:

- `FNetworkEmulationPacketSettings& opAssign(FNetworkEmulationPacketSettings Other)`

---


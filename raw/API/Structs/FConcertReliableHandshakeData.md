### FConcertReliableHandshakeData


Handshake used to negotiate a reliable channel between endpoints (also uses the ReliableChannelId from the base message)

**属性**:

- `int64 EndpointTimeoutTick [It's a timespan encoded in ticks. EndpointTimeoutTick represent the time it takes for the sending endpoint to consider another endpoint timed out]`


**方法**:

- `FConcertReliableHandshakeData& opAssign(FConcertReliableHandshakeData Other)`

---


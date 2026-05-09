### FConcertObjectReplicationSettings


Specifies replication frequency settings for a single object.

**属性**:

- `EConcertObjectReplicationMode ReplicationMode [Controls how often this object should be replicated.]`
- `uint8 ReplicationRate [How often per second the object is supposed to be replicated per second.

The update in seconds is given by 1 / ReplicationRate.
The default rate of 30 results in an update interval every 0.033s]`


**方法**:

- `FConcertObjectReplicationSettings& opAssign(FConcertObjectReplicationSettings Other)`

---


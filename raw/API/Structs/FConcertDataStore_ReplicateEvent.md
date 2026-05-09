### FConcertDataStore_ReplicateEvent


The event message sent by the server to the client to perform the initial replication, sending
all currently stored key/value pairs to a new session client(s) or to notify any further changes,
pushing an updated key/value pair to all clients except the one who performed the change.

**方法**:

- `FConcertDataStore_ReplicateEvent& opAssign(FConcertDataStore_ReplicateEvent Other)`

---


### UMassReplicationProcessor


Base processor that handles replication and only runs on the server. You should derive from this per entity type (that require different replication processing). It and its derived classes
query Mass entity fragments and set those values for replication when appropriate, using the MassClientBubbleHandler.
---


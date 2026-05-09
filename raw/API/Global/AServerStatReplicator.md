### AServerStatReplicator


Class used to replicate server "stat net" data over. For server only values, the client data is
is overwritten when bUpdateStatNet == true. For data that both the client and server set, the server
data will only overwrite if bUpdateStatNet == true && bOverwriteClientStats == true.

**属性**:

- `bool bOverwriteClientStats [Whether to overwrite client data stat net with data from the server or not]`
- `bool bUpdateStatNet [Whether to update stat net with data from the server or not]`

---


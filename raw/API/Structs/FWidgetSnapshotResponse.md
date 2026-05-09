### FWidgetSnapshotResponse


Implements a message that is used to receive a widget snapshot from a remote target.

**属性**:

- `TArray<uint8> SnapshotData [The snapshot data, to be used by FWidgetSnapshotData::LoadSnapshotFromBuffer]`
- `FGuid SnapshotRequestId [The request ID of this snapshot (used to identify the correct response from the target)]`


**方法**:

- `FWidgetSnapshotResponse& opAssign(FWidgetSnapshotResponse Other)`

---


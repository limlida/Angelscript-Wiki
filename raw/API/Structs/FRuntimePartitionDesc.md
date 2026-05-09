### FRuntimePartitionDesc


Holds settings for a runtime partition instance.

**属性**:

- `TArray<FRuntimePartitionHLODSetup> HLODSetups [HLOD setups used by this partition, one for each layers in the hierarchy]`
- `URuntimePartition MainLayer [Main partition object]`
- `FName Name [Name for this partition, used to map actors to it through the Actor.RuntimeGrid property]`


**方法**:

- `FRuntimePartitionDesc& opAssign(FRuntimePartitionDesc Other)`

---


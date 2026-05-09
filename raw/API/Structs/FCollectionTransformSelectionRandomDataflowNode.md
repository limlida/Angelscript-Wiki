### FCollectionTransformSelectionRandomDataflowNode


Selects bones randomly in the Collection

**属性**:

- `FLinearColor OverrideColor []`
- `float32 RandomSeed [Seed for the random generation, only used if Deterministic is on]`
- `float32 RandomThreshold [Bones get selected if RandomValue > RandomThreshold]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bDeterministic [If true, it always generates the same result for the same RandomSeed]`
- `bool bOverrideColor []`


**方法**:

- `FCollectionTransformSelectionRandomDataflowNode& opAssign(FCollectionTransformSelectionRandomDataflowNode Other)`

---


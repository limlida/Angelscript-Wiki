### FDataflowOverrideNode


FDataflowOverrideNode
             Base class for override nodes within the Dataflow graph.

             Override Nodes allow to access to Override property on
             the asset. They can read the values by the key.

**属性**:

- `FString Default []`
- `FName Key []`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FDataflowOverrideNode& opAssign(FDataflowOverrideNode Other)`

---


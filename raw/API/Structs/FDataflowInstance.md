### FDataflowInstance


This structure is to be embedded in any asset that need generation from a dataflow

**属性**:

- `UDataflow DataflowAsset [Dataflow asset to use]`
- `FName DataflowTerminal [name of the terminal node to use when generating the asset]`
- `FDataflowVariableOverrides VariableOverrides [Variables to override]`


**方法**:

- `FDataflowInstance& opAssign(FDataflowInstance Other)`

---


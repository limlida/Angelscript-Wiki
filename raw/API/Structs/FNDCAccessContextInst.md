### FNDCAccessContextInst


Context object for Niagara and Game code to access a Niagara Data Channel.
Can be customized per Data Channel to provide specific control for each Data Channel type.
Can include input data from accessing code such as a location, game play tags etc that can influence internal data routing/partitions.
Can also include output data allowing the NDC to pass information back to the accessing code.

**属性**:

- `FInstancedStruct AccessContext`


**方法**:

- `FNDCAccessContextInst& opAssign(FNDCAccessContextInst Other)`

---


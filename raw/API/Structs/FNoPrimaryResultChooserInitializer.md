### FNoPrimaryResultChooserInitializer


A ChooserTable for use in Blueprint, which returns no primary result but writes to outputs (useful if you are interested in returning only integral types like a float or string). Note: this table can't evaluate or nest other tables, and will set its outputs to the first row that matches (no 'multi' mode).

**属性**:

- `TArray<FInstancedStruct> ContextData [Parameter Objects or Structs from which the chooser can read or write properties]`


**方法**:

- `FNoPrimaryResultChooserInitializer& opAssign(FNoPrimaryResultChooserInitializer Other)`

---


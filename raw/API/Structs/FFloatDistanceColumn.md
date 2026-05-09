### FFloatDistanceColumn


A column which scores rows based on their difference from an Input float.

**属性**:

- `TSubclassOf<UFloatAutoPopulator> AutoPopulator [Optional class to auto populate column data based on the result asset]`
- `float32 CostMultiplier [Multiplier for controlling which scoring column has the most influence.  Higher values will make the match from this column more important.]`
- `FChooserFloatDistanceRowData DefaultRowValue [DefaultRowValue will be assigned to cells when new rows are created]`
- `FInstancedStruct InputValue [The Float column this fillter will Score based on]`
- `float MaxDistance [Maximum Distance used for normalizing scoring (greater distances will be considered equal to the max)]`
- `float MaxValue [Maximum value (for WrapInput)]`
- `float MinValue [Minimum value (for WrapInput)]`
- `bool bDisabled []`
- `bool bFilterOverMaxDistance [For rows with distance greater than MaxDistance, filter out the row]`
- `bool bWrapInput [Wrap input, and distance calculations for numbers such as angles]`


**方法**:

- `FFloatDistanceColumn& opAssign(FFloatDistanceColumn Other)`

---


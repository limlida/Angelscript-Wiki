### FCollectionTransformSelectionBySizeDataflowNode


Selects pieces based on their size

**属性**:

- `FLinearColor OverrideColor []`
- `ERangeSettingEnum RangeSetting [Values for the selection has to be inside or outside [Min, Max] range]`
- `float32 SizeMax [Maximum size for the selection]`
- `float32 SizeMin [Minimum size for the selection]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bInclusive [If true then range includes Min and Max values]`
- `bool bOverrideColor []`
- `bool bUseRelativeSize [Whether to use the 'Relative Size' -- i.e., the Size / Largest Bone Size. Otherwise, Size is the cube root of Volume.]`


**方法**:

- `FCollectionTransformSelectionBySizeDataflowNode& opAssign(FCollectionTransformSelectionBySizeDataflowNode Other)`

---


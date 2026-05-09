### FMakeTransformDataflowNode


Make an FTransform
Note: Originaly this version was depricated and replaced with FMakeTransformDataflowNode_v2 but when AnyRotationType was
introduced with the ConvertAnyRotation node FMakeTransformDataflowNode_v2 became obsolete and this version became the current version again

**属性**:

- `FVector InRotation [Rotation as Euler]`
- `FVector InScale [Scale]`
- `FVector InTranslation [Translation]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FMakeTransformDataflowNode& opAssign(FMakeTransformDataflowNode Other)`

---


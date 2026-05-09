### FCollectionTransformSelectionInBoxDataflowNode


Selects bones if their Vertices/BoundingBox/Centroid in a box

**属性**:

- `FLinearColor OverrideColor []`
- `FTransform Transform [Transform for the box]`
- `ESelectSubjectTypeEnum Type [Subject (Vertices/BoundingBox/Centroid) to check against box]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bAllVerticesMustContainedInBox [If true all the vertices of the piece must be inside of box]`
- `bool bOverrideColor []`


**方法**:

- `FCollectionTransformSelectionInBoxDataflowNode& opAssign(FCollectionTransformSelectionInBoxDataflowNode Other)`

---


### FCollectionTransformSelectionInSphereDataflowNode


Selects bones if their Vertices/BoundingBox/Centroid in a sphere

**属性**:

- `FLinearColor OverrideColor []`
- `FTransform Transform [Transform for the sphere]`
- `ESelectSubjectTypeEnum Type [Subject (Vertices/BoundingBox/Centroid) to check against box]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bAllVerticesMustContainedInSphere [If true all the vertices of the piece must be inside of box]`
- `bool bOverrideColor []`


**方法**:

- `FCollectionTransformSelectionInSphereDataflowNode& opAssign(FCollectionTransformSelectionInSphereDataflowNode Other)`

---


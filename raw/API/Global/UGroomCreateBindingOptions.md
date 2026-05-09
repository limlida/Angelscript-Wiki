### UGroomCreateBindingOptions


**属性**:

- `EGroomBindingMeshType GroomBindingType [Type of mesh to create groom binding for]`
- `int MatchingSection [Section to pick to transfer the position]`
- `int NumInterpolationPoints [Number of points used for the rbf interpolation]`
- `UGeometryCache SourceGeometryCache [GeometryCache on which the groom has been authored]`
- `USkeletalMesh SourceSkeletalMesh [Skeletal mesh on which the groom has been authored. This is optional, and used only if the hair
              binding is done a different mesh than the one which it has been authored, i.e., only if the curves
              roots and the surface geometry don't aligned and need to be wrapped/transformed.]`
- `FName TargetBindingAttribute [Optional mesh attribute used to filter triangles to bind groom to]`
- `UGeometryCache TargetGeometryCache [GeometryCache on which the groom is attached to.]`
- `USkeletalMesh TargetSkeletalMesh [Skeletal mesh on which the groom is attached to.]`

---


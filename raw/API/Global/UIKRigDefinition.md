### UIKRigDefinition


**属性**:

- `bool DrawGoals [Draw bones in the viewport.]`
- `float32 GoalSize [The size of the Goals in the editor viewport.]`
- `float32 GoalThickness [The thickness of the Goals in the editor viewport.]`
- `TSoftObjectPtr<USkeletalMesh> PreviewSkeletalMesh [The skeletal mesh to run the IK solve on (loaded into viewport).
NOTE: you can assign ANY Skeletal Mesh to apply the IK Rig to. Compatibility is determined when a new mesh is assigned
by comparing it's hierarchy with the goals, solvers and bone settings required by the rig. See output log for details.]`

---


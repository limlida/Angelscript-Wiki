### FRigUnit_Control_StaticMesh


A control unit used to drive a transform from an external source

**属性**:

- `FTransform Base [The base that transform is relative to]`
- `FTransformFilter Filter [The filter determines what axes can be manipulated by the in-viewport widgets]`
- `FTransform InitTransform [The initial transform that The Transform is initialized to.]`
- `FTransform MeshTransform [The the transform the mesh will be rendered with (applied on top of the control's transform in the viewport)]`
- `FTransform Result [The resultant transform of this unit (Base * Filter(Transform))]`
- `FEulerTransform Transform [The transform of this control]`


**方法**:

- `FRigUnit_Control_StaticMesh& opAssign(FRigUnit_Control_StaticMesh Other)`

---


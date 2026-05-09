### FRigUnit_Control


A control unit used to drive a transform from an external source

**属性**:

- `FTransform Base [The base that transform is relative to]`
- `FTransformFilter Filter [The filter determines what axes can be manipulated by the in-viewport widgets]`
- `FTransform InitTransform [The initial transform that The Transform is initialized to.]`
- `FTransform Result [The resultant transform of this unit (Base * Filter(Transform))]`
- `FEulerTransform Transform [The transform of this control]`


**方法**:

- `FRigUnit_Control& opAssign(FRigUnit_Control Other)`

---


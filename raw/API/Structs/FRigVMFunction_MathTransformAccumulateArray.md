### FRigVMFunction_MathTransformAccumulateArray


Treats the provided transforms as a chain with global / local transforms, and
projects each transform into the target space. Optionally you can provide
a custom parent indices array, with which you can represent more than just chains.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable nodes together]`
- `TArray<int> ParentIndices [If this array is the same size as the transforms array the indices will be used
to look up each transform's parent. They are expected to be in order.]`
- `FTransform Root [Provides the parent transform for the root]`
- `ERigVMTransformSpace TargetSpace [Defines the space to project to]`
- `TArray<FTransform> Transforms`


**方法**:

- `FRigVMFunction_MathTransformAccumulateArray& opAssign(FRigVMFunction_MathTransformAccumulateArray Other)`

---


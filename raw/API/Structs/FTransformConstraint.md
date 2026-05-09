### FTransformConstraint


**属性**:

- `FConstraintDescription Operator [@note thought of separating this out per each but we'll have an issue with applying transform in what order
but something to think about if that seems better]`
- `FName SourceNode`
- `FName TargetNode`
- `float32 Weight`
- `bool bMaintainOffset [When the constraint is first applied, maintain the offset from the target node]`


**方法**:

- `FTransformConstraint& opAssign(FTransformConstraint Other)`

---


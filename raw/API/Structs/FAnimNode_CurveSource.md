### FAnimNode_CurveSource


Supply curves from some external source (e.g. audio)

**属性**:

- `float32 Alpha [How much we wan to blend the curve in by]`
- `FName SourceBinding [The binding of the curve source we want to bind to.
We will bind to an object that implements ICurveSourceInterface. First we check
the actor that owns this (if any), then we check each of its components to see if we should
bind to the source that matches this name.]`
- `FPoseLink SourcePose`


**方法**:

- `FAnimNode_CurveSource& opAssign(FAnimNode_CurveSource Other)`

---


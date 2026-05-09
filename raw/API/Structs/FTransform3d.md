### FTransform3d


Transform composed of Quat/Translation/Scale.
@note This is implemented in either Engine/Source/Runtime/Core/Public/Math/TransformVectorized.h or TransformNonVectorized.h depending on the platform.

**属性**:

- `FQuat4d Rotation [Rotation of this transformation, as a quaternion.]`
- `FVector3d Scale3D [3D scale (always applied in local space) as a vector.]`
- `FVector3d Translation [Translation of this transformation, as a vector.]`


**方法**:

- `FTransform3d& opAssign(FTransform3d Other)`

---


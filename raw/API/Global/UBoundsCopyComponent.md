### UBoundsCopyComponent


Component used to copy the bounds of another Actor.

**属性**:

- `TSoftObjectPtr<AActor> BoundsSourceActor [Actor to copy the bounds from to set up the transform.]`
- `bool bKeepOwnBoundsScale [If true, the actor's scale will be changed so that after adjustment, its own bounds match the source bounds.]`
- `bool bUseCollidingComponentsForOwnBounds [If true, the actor's own bounds will include its colliding components bounds.]`
- `bool bUseCollidingComponentsForSourceBounds [If true, the source actor's bounds will include its colliding components bounds.]`


**方法**:

- `SetRotation()`  
  Copy the rotation from BoundsSourceActor to this component
- `SetTransformToBounds()`  
  Set this component transform to include the BoundsSourceActor bounds

---


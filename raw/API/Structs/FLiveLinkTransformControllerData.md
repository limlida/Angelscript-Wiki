### FLiveLinkTransformControllerData


**属性**:

- `bool bSweep [Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.]`
- `bool bTeleport [Whether we teleport the physics state (if physics collision is enabled for this object).
If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
If CCD is on and not teleporting, this will affect objects along the entire sweep volume.]`
- `bool bUseLocation [Whether we should set the owning actor's location with the value coming from live link.]`
- `bool bUseRotation [Whether we should set the owning actor's rotation with the value coming from live link.]`
- `bool bUseScale [Whether we should set the owning actor's scale with the value coming from live link.]`
- `bool bWorldTransform [Set the transform of the component in world space of in its local reference frame.]`


**方法**:

- `FLiveLinkTransformControllerData& opAssign(FLiveLinkTransformControllerData Other)`

---


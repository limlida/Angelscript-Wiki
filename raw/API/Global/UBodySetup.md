### UBodySetup


BodySetup contains all collision information that is associated with a single asset.
A single BodySetup instance is shared among many BodyInstances so that geometry data is not duplicated.
Assets typically implement a GetBodySetup function that is used during physics state creation.

@see GetBodySetup
@see FBodyInstance

**属性**:

- `FKAggregateGeom AggGeom [Simplified collision representation of this]`
- `FBodyInstance DefaultInstance [Default properties of the body instance, copied into objects on instantiation, was URB_BodyInstance]`
- `UPhysicalMaterial PhysMaterial [Physical material to use for simple collision on this body. Encodes information about density, friction etc.]`
- `FWalkableSlopeOverride WalkableSlopeOverride [Custom walkable slope setting for this body.]`
- `bool bConsiderForBounds [Should this BodySetup be considered for the bounding box of the PhysicsAsset (and hence SkeletalMeshComponent).
There is a speed improvement from having less BodySetups processed each frame when updating the bounds.]`
- `bool bDoubleSidedGeometry [If true, the physics triangle mesh will use double sided faces when doing scene queries.
This is useful for planes and single sided meshes that need traces to work on both sides.]`
- `bool bNeverNeedsCookedCollisionData [Indicates that we will never use convex or trimesh shapes. This is an optimization to skip checking for binary data.
TODO Chaos this is to opt out of CreatePhysicsMeshes for certain meshes
Better long term mesh is to not call CreatePhysicsMeshes until it is known there is a mesh instance that needs it.]`

---


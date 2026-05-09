### UNiagaraDataInterfaceRigidMeshCollisionQuery


Data Interface used to collide against static meshes - whether it is the mesh distance field or a physics asset's collision primitive

**属性**:

- `TArray<FName> ActorTags [Set of tags used to match against actors when searching for RigidBody providers.  Empty tags will be ignored, and only a single
              tag is required for an actor to be matched.]`
- `TArray<FName> ComponentTags [Set of tags used to match against components when searching for RigidBody providers.  Empty tags will be ignored, and only a
              single tag is required for a component to be matched.]`
- `bool GlobalSearchAllowed []`
- `bool GlobalSearchFallback_Unscripted []`
- `bool GlobalSearchForced []`
- `int MaxNumPrimitives [Maximum number of RigidBody represented by this DataInterface.]`
- `bool OnlyUseMoveable [If enabled only actors that are considered moveable will be searched for RigidBodies.]`
- `TArray<TSoftObjectPtr<AActor>> SourceActors [Hardcoded references to actors that will be used as RigidBody providers.]`
- `bool UseComplexCollisions [If enabled, complex collisions will be searched for.]`
- `bool bFilterByObjectType [If enabled, FindActors will use filtering based on ObjectType instead of Channel.]`

---


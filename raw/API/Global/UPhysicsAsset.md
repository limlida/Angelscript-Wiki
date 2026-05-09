### UPhysicsAsset


PhysicsAsset contains a set of rigid bodies and constraints that make up a single ragdoll.
The asset is not limited to human ragdolls, and can be used for any physical simulation using bodies and constraints.
A SkeletalMesh has a single PhysicsAsset, which allows for easily turning ragdoll physics on or off for many SkeletalMeshComponents
The asset can be configured inside the Physics Asset Editor.

@see https://docs.unrealengine.com/InteractiveExperiences/Physics/PhysicsAssetEditor
@see USkeletalMesh

**属性**:

- `TArray<TObjectPtr<UAssetUserData>> AssetUserData []`
- `TArray<FName> ConstraintProfiles []`
- `TArray<FName> PhysicalAnimationProfiles []`
- `FPhysicsAssetSolverSettings SolverSettings [Solver settings when the asset is used with a RigidBody Anim Node (RBAN).]`
- `EPhysicsAssetSolverType SolverType [Solver type used in physics asset editor. This can be used to make what you see in the asset editor more closely resembles what you
see in game (though there will be differences owing to framerate variation etc). If your asset will primarily be used as a ragdoll
select "World", but if it will be used in the AnimGraph select "RBAN".]`
- `UThumbnailInfo ThumbnailInfo [Information for thumbnail rendering]`
- `bool bNotForDedicatedServer [If true, we skip instancing bodies for this PhysicsAsset on dedicated servers]`


**方法**:

- `FConstraintInstanceAccessor GetConstraintByBoneNames(FName Bone1Name, FName Bone2Name)`  
  Gets a constraint by its joint name
@param Bone1Name name of the first bone in the joint
@param Bone2Name name of the second bone in the joint
@return ConstraintInstance accessor to the constraint data
- `FConstraintInstanceAccessor GetConstraintByName(FName ConstraintName)`  
  Gets a constraint by its joint name
@param ConstraintName name of the constraint
@return ConstraintInstance accessor to the constraint data
- `GetConstraints(bool bIncludesTerminated, TArray<FConstraintInstanceAccessor>& OutConstraints)`  
  Gets all constraints
@param IncludesTerminated whether or not to return terminated constraints
@param OutConstraints returned list of constraints matching the parameters

---


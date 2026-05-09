### UGroomComponent


**属性**:

- `FString AttachmentName [Optional socket name, where the groom component should be attached at, when parented with a skeletal mesh]`
- `UGroomBindingAsset BindingAsset [Optional binding asset for binding a groom onto a skeletal mesh. If the binding asset is not provided the projection is done at runtime, which implies a large GPU cost at startup time.]`
- `UGroomAsset GroomAsset [Groom asset .]`
- `UGroomCache GroomCache`
- `TArray<FHairGroupDesc> GroomGroupsDesc [Groom's groups info.]`
- `UMeshDeformer MeshDeformer [Mesh deformer that will be applied on groom instance for deformation. Enable the groom asset deformation flags on groups to be able to set it.]`
- `UMeshDeformerInstance MeshDeformerInstance [Object containing state for the bound MeshDeformer.]`
- `UMeshDeformerInstanceSettings MeshDeformerInstanceSettings [Object containing instance settings for the bound MeshDeformer.]`
- `UPhysicsAsset PhysicsAsset [Physics asset to be used for hair simulation]`
- `FHairSimulationSettings SimulationSettings [Groom's simulation settings]`
- `bool bLooping []`
- `bool bManualTick []`
- `bool bRunning []`
- `bool bUseCards [Force the groom to use cards/meshes geometry instead of strands.]`


**方法**:

- `AddCollisionComponent(USkeletalMeshComponent SkeletalMeshComponent)`  
  Add a skeletal mesh to the collision components
- `bool GetIsHairLengthScaleEnabled()`
- `UNiagaraComponent GetNiagaraComponent(int GroupIndex)`  
  Given the group index return the matching niagara component
- `ResetCollisionComponents()`  
  Reset the collision components
- `ResetSimulation()`  
  Reset the simulation, if enabled
- `SetBindingAsset(UGroomBindingAsset InBinding)`  
  Accessor function for changing Groom binding asset from blueprint/sequencer
- `SetEnableSimulation(bool bInEnableSimulation)`  
  Accessor function for changing the enable simulation flag from blueprint/sequencer
- `SetGroomAsset(UGroomAsset Asset)`  
  Accessor function for changing Groom asset from blueprint/sequencer
- `SetGroomCache(UGroomCache InGroomCache)`  
  Accessor function for changing GroomCache asset from blueprint/sequencer
- `SetHairLengthScale(float32 Scale)`  
  Accessor function for changing hair length scale from blueprint/sequencer
- `SetHairLengthScaleEnable(bool bEnable)`
- `SetMeshDeformer(UMeshDeformer InMeshDeformer)`  
  Change the MeshDeformer that is used for this Component.
- `SetPhysicsAsset(UPhysicsAsset InPhysicsAsset)`  
  Accessor function for changing Groom physics asset from blueprint/sequencer

---


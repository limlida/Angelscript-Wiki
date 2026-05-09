### UInstancedSkinnedMeshComponent


**属性**:

- `float32 AnimationMinScreenSize [Screen space footprint (in primary view) cutoff which dictates the far distance the instance will play back animation.
Using 0.0 (the default) falls back to a global threshold, a negative value disables the cutoff.]`
- `TArray<float32> InstanceCustomData [Array of custom data for instances. This will contains NumCustomDataFloats*InstanceCount entries. The entries are represented sequantially, in instance order. Can be read in a material and manipulated through Blueprints.
     Example: If NumCustomDataFloats is 1, then each entry will belong to an instance. Custom data 0 will belong to Instance 0. Custom data 1 will belong to Instance 1 etc.
     Example: If NumCustomDataFloats is 2, then each pair of sequential entries belong to an instance. Custom data 0 and 1 will belong to Instance 0. Custom data 2 and 3 will belong to Instance 2 etc.]`
- `TArray<FSkinnedMeshInstanceData> InstanceData [Array of instances, bulk serialized.]`
- `int InstanceEndCullDistance [Distance from camera at which each instance completely fades out.]`
- `int InstanceMinDrawDistance [Distance from camera at which each instance begins to draw.]`
- `int InstanceStartCullDistance [Distance from camera at which each instance begins to fade out.]`
- `int NumCustomDataFloats [Defines the number of floats that will be available per instance for custom data]`
- `UTransformProviderData TransformProvider`


**方法**:

- `FPrimitiveInstanceId AddInstance(FTransform InstanceTransform, int AnimationIndex, bool bWorldSpace = false)`  
  Add an instance to this component. Transform is given in local space of this component unless bWorldSpace is set.
- `TArray<FPrimitiveInstanceId> AddInstances(TArray<FTransform> Transforms, TArray<int> AnimationIndices, bool bShouldReturnIds, bool bWorldSpace = false)`  
  Add multiple instances to this component. Transform is given in local space of this component unless bWorldSpace is set.
- `ClearInstances()`  
  Clear all instances being rendered by this component.
- `bool GetInstanceTransform(FPrimitiveInstanceId InstanceId, FTransform& OutInstanceTransform, bool bWorldSpace = false) const`  
  Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set. Returns True on success.
- `UTransformProviderData GetTransformProvider() const`
- `OptimizeInstanceData(bool bShouldRetainIdMap = false)`  
  Optimize the instance data by performing sorting according to spatial hash on the _source_ data.
Note that this reorders the instances and thus any indexing will change. By default resets the ID mapping to identity.
 @param bShouldRetainIdMap   If true, the id mapping is updated instead of reset to identity, this retains the validity of the IDs but adds some memory and storage cost (for the ID mapping).
- `bool RemoveInstance(FPrimitiveInstanceId InstanceId)`  
  Remove the instance specified. Returns True on success.
- `RemoveInstances(TArray<FPrimitiveInstanceId> InstancesToRemove)`  
  Remove the instances specified. Returns True on success.
- `bool SetCustomDataValue(FPrimitiveInstanceId InstanceId, int CustomDataIndex, float32 CustomDataValue)`  
  Update custom data for specific instance
- `SetNumCustomDataFloats(int InNumCustomDataFloats)`  
  Update number of custom data entries per instance. This applies to all instances and will reallocate the full custom data buffer and reset all values to 0
- `SetTransformProvider(UTransformProviderData InTransformProvider)`

---


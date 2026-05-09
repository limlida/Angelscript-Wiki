### UInstancedStaticMeshComponent


A component that efficiently renders multiple instances of the same StaticMesh.

**属性**:

- `int InstanceEndCullDistance [Distance from camera at which each instance completely fades out.]`
- `float32 InstanceLODDistanceScale [Scale applied to change the computation of LOD distances when using the StaticMesh screen sizes.
Smaller values make LODs transition earlier.]`
- `int InstanceMinDrawDistance [Distance from camera at which each instance begins to draw.]`
- `int InstanceStartCullDistance [Distance from camera at which each instance begins to fade out.]`
- `int InstancingRandomSeed [Value used to seed the random number stream that generates random numbers for each of this mesh's instances.
      The random number is stored in a buffer accessible to materials through the PerInstanceRandom expression. If
      this is set to zero (default), it will be populated automatically by the editor.]`
- `int NumCustomDataFloats [Defines the number of floats that will be available per instance for custom data]`
- `TArray<float32> PerInstanceSMCustomData [Array of custom data for instances. This will contains NumCustomDataFloats*InstanceCount entries. The entries are represented sequantially, in instance order. Can be read in a material and manipulated through Blueprints.
    Example: If NumCustomDataFloats is 1, then each entry will belong to an instance. Custom data 0 will belong to Instance 0. Custom data 1 will belong to Instance 1 etc.
    Example: If NumCustomDataFloats is 2, then each pair of sequential entries belong to an instance. Custom data 0 and 1 will belong to Instance 0. Custom data 2 and 3 will belong to Instance 2 etc.]`
- `TArray<FInstancedStaticMeshInstanceData> PerInstanceSMData [Array of instances, bulk serialized.]`
- `bool bUseGpuLodSelection [If true, this component will use GPU LOD selection.]`


**方法**:

- `int AddInstance(FTransform InstanceTransform, bool bWorldSpace = false)`  
  Add an instance to this component. Transform is given in local space of this component unless bWorldSpace is set.
- `TArray<int> AddInstances(TArray<FTransform> InstanceTransforms, bool bShouldReturnIndices, bool bWorldSpace = false, bool bUpdateNavigation = true)`  
  Add multiple instances to this component. Transform is given in local space of this component unless bWorldSpace is set.
- `bool BatchUpdateInstancesTransform(int StartInstanceIndex, int NumInstances, FTransform NewInstancesTransform, bool bWorldSpace = false, bool bMarkRenderStateDirty = false, bool bTeleport = false)`  
  Update the transform for a number of instances.

@param StartInstanceIndex             The starting index of the instances to update
@param NumInstances                   The number of instances to update
@param NewInstancesTransform  The new transform
@param bWorldSpace                    If true, the new transform is interpreted as a World Space transform, otherwise it is interpreted as Local Space
@param bMarkRenderStateDirty  If true, the change should be visible immediately. If you are updating many instances you should only set this to true for the last instance.
@param bTeleport                              Whether or not the instances physics should be moved normally, or teleported (moved instantly, ignoring velocity).
@return                                               True on success.
- `bool BatchUpdateInstancesTransforms(int StartInstanceIndex, TArray<FTransform> NewInstancesTransforms, bool bWorldSpace = false, bool bMarkRenderStateDirty = false, bool bTeleport = false)`  
  Update the transform for an array of instances.

@param StartInstanceIndex             The starting index of the instances to update
@param NewInstancesTransforms The new transforms
@param bWorldSpace                    If true, the new transforms are interpreted as a World Space transform, otherwise it is interpreted as Local Space
@param bMarkRenderStateDirty  If true, the change should be visible immediately. If you are updating many instances you should only set this to true for the last instance.
@param bTeleport                              Whether or not the instances physics should be moved normally, or teleported (moved instantly, ignoring velocity).
@return                                               True on success.
- `ClearInstances()`  
  Clear all instances being rendered by this component.
- `GetCullDistances(int& OutStartCullDistance, int& OutEndCullDistance) const`  
  Gets the fading start and culling end distances for this component.
- `int GetInstanceCount() const`  
  Get the number of instances in this component.
- `TArray<int> GetInstancesOverlappingBox(FBox Box, bool bBoxInWorldSpace = true) const`  
  Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.
- `TArray<int> GetInstancesOverlappingSphere(FVector Center, float32 Radius, bool bSphereInWorldSpace = true) const`  
  Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.
- `bool GetInstanceTransform(int InstanceIndex, FTransform& OutInstanceTransform, bool bWorldSpace = false) const`  
  Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set.  Returns True on success.
- `float32 GetLODDistanceScale() const`  
  Gets the current LOD scale.
- `bool IsValidInstance(int InstanceIndex) const`  
  Does the given index map to a valid instance in this component?
- `bool RemoveInstance(int InstanceIndex)`  
  Remove the instance specified. Returns True on success.
- `bool RemoveInstances(TArray<int> InstancesToRemove)`  
  Remove the instances specified. Returns True on success.
- `SetCullDistances(int StartCullDistance, int EndCullDistance)`  
  Sets the fading start and culling end distances for this component.
- `bool SetCustomDataValue(int InstanceIndex, int CustomDataIndex, float32 CustomDataValue, bool bMarkRenderStateDirty = false)`  
  Update custom data for specific instance
- `SetLODDistanceScale(float32 InLODDistanceScale)`  
  Sets the LOD scale.
- `SetNumCustomDataFloats(int InNumCustomDataFloats)`  
  Update number of custom data entries per instance. This applies to all instances and will reallocate the full custom data buffer and reset all values to 0
- `bool UpdateInstanceTransform(int InstanceIndex, FTransform NewInstanceTransform, bool bWorldSpace = false, bool bMarkRenderStateDirty = false, bool bTeleport = false)`  
  Update the transform for the instance specified.

@param InstanceIndex                  The index of the instance to update
@param NewInstanceTransform   The new transform
@param bWorldSpace                    If true, the new transform is interpreted as a World Space transform, otherwise it is interpreted as Local Space
@param bMarkRenderStateDirty  If true, the change should be visible immediately. If you are updating many instances you should only set this to true for the last instance.
@param bTeleport                              Whether or not the instance's physics should be moved normally, or teleported (moved instantly, ignoring velocity).
@return                                               True on success.
- `FScriptTypedElementHandle AcquireEditorElementHandle(int InstanceIndex, bool bAllowCreate = true) const`

---


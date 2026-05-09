### UDynamicMeshComponent


UDynamicMeshComponent is a mesh component similar to UProceduralMeshComponent,
except it bases the renderable geometry off an internal UDynamicMesh instance (which
encapsulates a FDynamicMesh3).

There is extensive support for partial updates to render buffers, customizing colors,
internally decomposing the mesh into separate chunks for more efficient render updates,
and support for attaching a 'Postprocessor' to generate a render mesh on-the-fly
See comment sections below for details.

**属性**:

- `FKAggregateGeom AggGeom [Simplified collision representation for the mesh component]`
- `ECollisionTraceFlag CollisionType [Type of Collision Geometry to use for this Mesh]`
- `EDynamicMeshComponentTangentsMode TangentsType [Tangent source defines whether we use the provided tangents on the Dynamic Mesh, autogenerate tangents, or do not use tangents]`
- `bool bDeferCollisionUpdates [If true, updates to the mesh will not result in immediate collision regeneration. Useful when the mesh will be modified multiple times before collision is needed.]`
- `bool bDisableMeshUVHitResults [If true, UV hit results will not be enabled for this mesh's complex collision even if they are enabled for the project settings generally. This can make the complex build faster and take less memory.]`
- `bool bEnableComplexCollision [If true, current mesh will be used as Complex Collision source mesh.
This is independent of the CollisionType setting, ie, even if Complex collision is enabled, if this is false, then the Complex Collision mesh will be empty]`
- `bool bUseAsyncCooking [Controls whether the physics cooking should be done off the game thread.
This should be used when collision geometry doesn't have to be immediately up to date (For example streaming in far away objects)]`


**方法**:

- `bool AllowsGeometrySelection() const`  
  @return Whether geometry elements (triangles, edges, etc) of the dynamic mesh can be interactively selected.
- `ConfigureMaterialSet(TArray<UMaterialInterface> NewMaterialSet, bool bDeleteExtraSlots = true)`  
  Set new list of Materials for the Mesh. Dynamic Mesh Component does not have
Slot Names, so the size of the Material Set should be the same as the number of
different Material IDs on the mesh MaterialID attribute
@param bDeleteExtraSlots if true, extra Material Slots beyond max NewMaterialSet.Num() are removed
- `EnableComplexAsSimpleCollision()`  
  calls SetComplexAsSimpleCollisionEnabled(true, true)
- `EDynamicMeshComponentTangentsMode GetTangentsType() const`
- `NotifyMeshModified()`  
  Notify the Component that it's DynamicMesh has been modified externally. This will result in all Rendering Data
for the Component being rebuilt on the next frame (internally the Scene Proxy is fully destroyed and rebuilt).

You must use this function if the mesh triangulation has been modified, or if polygroups or material assignments
have been changed, or if Normal/UV/Color topology has changed (ie new split-vertices have been introduced).
If only vertex attribute values (position, normals, UVs, colors) have been modified, then
Notify Vertex Attributes Updated can be used to do a faster update.
- `NotifyMeshVertexAttributesModified(bool bPositions = true, bool bNormals = true, bool bUVs = true, bool bColors = true)`  
  Notify the Component that vertex attribute values of it's DynamicMesh have been modified externally. This will result in
Rendering vertex buffers being updated. This update path is more efficient than doing a full Notify Mesh Updated.

@warning it is invalid to call this function if (1) the mesh triangulation has also been changed, (2) triangle MaterialIDs have been changed,
or (3) any attribute overlay (normal, color, UV) topology has been modified, ie split-vertices have been added/removed.
Behavior of this function is undefined in these cases and may crash. If you are unsure, use Notify Mesh Updated.
- `SetAllowsGeometrySelection(bool bInAllowsGeometrySelection)`  
  Enable/Disable interactive geometry element selection for the mesh. Useful to disable geometry selection on procedural meshes where the selection will be frequently invalidated.

@param bInAllowsGeometrySelection Whether geometry elements (triangles, edges, etc) of the dynamic mesh will be interactively selectable.
- `SetComplexAsSimpleCollisionEnabled(bool bEnabled, bool bImmediateUpdate = true)`  
  If bEnabled=true, sets bEnableComplexCollision=true and CollisionType=CTF_UseComplexAsSimple
If bEnabled=true, sets bEnableComplexCollision=false and CollisionType=CTF_UseDefault
@param bImmediateUpdate if true, UpdateCollision(true) is called
- `SetDeferredCollisionUpdatesEnabled(bool bEnabled, bool bImmediateUpdate = true)`  
  Set value of bDeferCollisionUpdates, when enabled, collision is not automatically recomputed each time the mesh changes.
@param bImmediateUpdate if true, UpdateCollision(true) is called if bEnabled=false, ie to force a collision rebuild
- `SetDynamicMesh(UDynamicMesh NewMesh)`  
  Replace the current UDynamicMesh with a new one, and transfer ownership of NewMesh to this Component.
This can be used to (eg) assign a UDynamicMesh created with NewObject in the Transient Package to this Component.
@warning If NewMesh is owned/Outer'd to another DynamicMeshComponent, a GLEO error may occur if that Component is serialized.
- `SetTangentsType(EDynamicMeshComponentTangentsMode NewTangentsType)`
- `UpdateCollision(bool bOnlyIfPending = true)`  
  Force an update of the Collision/Physics data for this Component.
@param bOnlyIfPending only update if a collision update is pending, ie the underlying DynamicMesh changed and bDeferCollisionUpdates is enabled
- `bool ValidateMaterialSlots(bool bCreateIfMissing = true, bool bDeleteExtraSlots = true)`  
  Compute the maximum MaterialID on the DynamicMesh, and ensure that Material Slots match.
Pass both arguments as false to just do a check.
@param bCreateIfMissing if true, add extra (empty) Material Slots to match max MaterialID
@param bDeleteExtraSlots if true, extra Material Slots beyond max MaterialID are removed
@return true if at the end of this function, Material Slot Count == Max MaterialID

---


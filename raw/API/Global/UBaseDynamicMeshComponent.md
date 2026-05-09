### UBaseDynamicMeshComponent


UBaseDynamicMeshComponent is a base interface for a UMeshComponent based on a UDynamicMesh.

**属性**:

- `EDynamicMeshComponentColorOverrideMode ColorMode`
- `EDynamicMeshVertexColorTransformMode ColorSpaceMode [Color Space Transform that will be applied to the colors stored in the DynamicMesh Attribute Color Overlay when
constructing render buffers.
Default is "No Transform", ie color R/G/B/A will be independently converted from 32-bit float to 8-bit by direct mapping.
LinearToSRGB mode will apply SRGB conversion, ie assumes colors in the Mesh are in Linear space. This will produce the same behavior as UStaticMesh.
SRGBToLinear mode will invert SRGB conversion, ie assumes colors in the Mesh are in SRGB space.]`
- `FColor ConstantColor [Constant Color used when Override Color Mode is set to Constant]`
- `EDynamicMeshDrawPath DrawPath [Controls whether to use the dynamic or static draw path]`
- `FLinearColor WireframeColor [Constant Color used when Override Color Mode is set to Constant]`
- `bool bEnableFlatShading [Enable use of per-triangle facet normals in place of mesh normals]`
- `bool bEnableRaytracing [Enable/disable Raytracing support on this Mesh, if Raytracing is currently enabled in the Project Settings.
Use SetEnableRaytracing() to configure this flag in Blueprints/C++.]`
- `bool bEnableViewModeOverrides [This flag controls whether Editor View Mode Overrides are enabled for this mesh. For example, this controls hidden-line removal on the wireframe
in Wireframe View Mode, and whether the normal map will be disabled in Lighting-Only View Mode, as well as various other things.
Use SetViewModeOverridesEnabled() to control this setting in Blueprints/C++.]`
- `bool bExplicitShowWireframe [If true, render the Wireframe on top of the Shaded Mesh]`
- `bool bTwoSided []`


**方法**:

- `ClearOverrideRenderMaterial()`  
  Clear any active override render material
- `ClearOverrideSecondaryWireframeRenderMaterial()`  
  Clear any active secondary wireframe override render material
- `ClearOverrideWireframeRenderMaterial()`  
  Clear any active wireframe override render material
- `ClearSecondaryRenderMaterial()`  
  Clear any active secondary render material
- `EDynamicMeshComponentColorOverrideMode GetColorOverrideMode() const`  
  @return active Color Override mode
- `FColor GetConstantOverrideColor() const`  
  @return active Color used for Constant Color Override Mode
- `UDynamicMesh GetDynamicMesh()`  
  @return the child UDynamicMesh
- `bool GetEnableRaytracing() const`  
  @return true if raytracing support is currently enabled
- `bool GetEnableWireframeRenderPass() const`  
  @return true if wireframe rendering pass is enabled
- `bool GetFlatShadingEnabled() const`  
  @return Whether mesh will be rendered with per-triangle normals
- `EDynamicMeshDrawPath GetMeshDrawPath() const`  
  @return Whether the mesh renders using the static or dynamic draw path
- `UMaterialInterface GetOverrideRenderMaterial(int MaterialIndex) const`  
  @return active override render material for the given MaterialIndex
- `UMaterialInterface GetOverrideSecondaryWireframeRenderMaterial() const`  
  @return active secondary wireframe override render material
- `UMaterialInterface GetOverrideWireframeRenderMaterial() const`  
  @return active wireframe override render material
- `bool GetSecondaryBuffersVisibility() const`  
  @return true if secondary buffers are currently set to be visible
- `UMaterialInterface GetSecondaryRenderMaterial() const`  
  @return active secondary render material
- `bool GetShadowsEnabled() const`
- `EDynamicMeshVertexColorTransformMode GetVertexColorSpaceTransformMode() const`  
  @return active Color Override mode
- `bool GetViewModeOverridesEnabled() const`
- `bool HasOverrideRenderMaterial(int k) const`  
  @return true if an override render material is currently enabled for the given MaterialIndex
- `SetColorOverrideMode(EDynamicMeshComponentColorOverrideMode NewMode)`  
  Configure the active Color Override
- `SetConstantOverrideColor(FColor NewColor)`  
  Configure the Color used with Constant Color Override Mode
- `SetEnableFlatShading(bool bEnable)`  
  Configure the Color used with Constant Color Override Mode
- `SetEnableRaytracing(bool bSetEnabled)`  
  Enable/Disable raytracing support. This is an expensive call as it flushes
the rendering queue and forces an immediate rebuild of the SceneProxy.
- `SetEnableWireframeRenderPass(bool bEnable)`  
  Configure whether wireframe rendering is enabled or not
- `SetMeshDrawPath(EDynamicMeshDrawPath NewDrawPath)`  
  Set the mesh rendering to use the static or dynamic draw path
- `SetOverrideRenderMaterial(UMaterialInterface Material)`  
  Set an active override render material. This should replace all materials during rendering.
- `SetOverrideSecondaryWireframeRenderMaterial(UMaterialInterface Material)`  
  Set an active secondary wireframe override render material
- `SetOverrideWireframeRenderMaterial(UMaterialInterface Material)`  
  Set an active wireframe override render Material
- `SetSecondaryBuffersVisibility(bool bSetVisible)`  
  Show/Hide the secondary triangle buffers. Does not invalidate SceneProxy.
- `SetSecondaryRenderMaterial(UMaterialInterface Material)`  
  Set an active secondary render material.
- `SetShadowsEnabled(bool bEnabled)`
- `SetVertexColorSpaceTransformMode(EDynamicMeshVertexColorTransformMode NewMode)`  
  Configure the active Color Space Transform Mode
- `SetViewModeOverridesEnabled(bool bEnabled)`

---


### UMeshWireframeComponent


UMeshWireframeComponent draws a mesh wireframe as lines, with line color/thickness
varying depending on line type and the configuration settings.
Currently can draw:
   - all mesh edges
   - boundary edges
   - UV seam edges
   - Normal seam edges
   - Color seam edges

Client must provide a IMeshWireframeSourceProvider implementation that provides the
edge set, vertices, and edge type

**属性**:

- `FColor BoundaryEdgeColor []`
- `float32 BoundaryEdgeThickness []`
- `FColor ColorSeamColor []`
- `float32 ColorSeamThickness []`
- `float32 LineDepthBias [Depth bias of the lines, used to offset in depth to avoid z-fighting]`
- `float32 LineDepthBiasSizeScale [Target-size depth bias scale. This is multiplied by LineDepthBias.
Client of UMeshWireframeComponent can set this if desired, eg to fraction of target object bounding box size, etc.]`
- `FColor NormalSeamColor []`
- `float32 NormalSeamThickness []`
- `FColor TangentSeamColor []`
- `float32 TangentSeamThickness []`
- `float32 ThicknessScale [Scaling factor applied to the per-edge-type thicknesses defined below]`
- `FColor UVSeamColor []`
- `float32 UVSeamThickness []`
- `FColor WireframeColor []`
- `float32 WireframeThickness []`
- `bool bEnableBoundaryEdges [Boundary Edge properties]`
- `bool bEnableColorSeams [color seam properties]`
- `bool bEnableNormalSeams [normal seam properties]`
- `bool bEnableTangentSeams [tangent seam properties]`
- `bool bEnableUVSeams [UV seam properties]`
- `bool bEnableWireframe [Wireframe properties]`

---


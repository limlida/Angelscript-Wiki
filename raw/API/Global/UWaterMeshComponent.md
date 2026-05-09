### UWaterMeshComponent


Water Mesh Component responsible for generating and rendering a continuous water mesh on top of all the existing water body actors in the world
The component contains a quadtree which defines where there are water tiles. A function for traversing the quadtree and outputing a list of instance data for each tile to be rendered from a point of view is included

**属性**:

- `UMaterialInterface FarDistanceMaterial []`
- `float32 FarDistanceMeshExtent []`
- `float FarDistanceMeshHeightWithoutOcean [Absolute world space height of the far mesh when there is no ocean.]`
- `int ForceCollapseDensityLevel [At above what density level a tile is allowed to force collapse even if not all leaf nodes in the subtree are present.
    Collapsing will not occus if any child node in the subtree has different materials.
    Setting this to -1 means no collapsing is allowed and the water mesh will always keep it's silhouette at any distance.
    Setting this to 0 will allow every level to collapse
    Setting this to something higher than the LODCount will have no effect]`
- `float32 LODScale [World scale of the concentric LODs]`
- `int TessellationFactor [Highest tessellation factor of a water tile. Max number of verts on the side of a tile will be (2^TessellationFactor)+1)]`
- `float32 TileSize [World size of the water tiles at LOD0. Multiply this with the ExtentInTiles to get the world extents of the system]`
- `bool bUseFarMeshWithoutOcean [Forces the water mesh to always render the far mesh, regardless if there is an ocean or not.]`


**方法**:

- `bool IsEnabled() const`

---


### UMeshTopologySelectionMechanicProperties


**属性**:

- `bool bEnableMarquee []`
- `bool bHitBackFaces [When set, faces that face away from the camera are ignored in selection and occlusion. Useful for working with inside-out meshes.]`
- `bool bIgnoreOcclusion [Do not check whether the closest element is occluded from the current view.]`
- `bool bMarqueeIgnoreOcclusion [Determines whether vertices should be checked for occlusion in marquee select (Note: marquee select currently only works with edges and vertices)]`
- `bool bPreferProjectedElement [Prefer to select an edge projected to a point rather than the point, or a face projected to an edge rather than the edge.]`
- `bool bSelectDownRay [If the closest element is valid, select other elements behind it that are aligned with it.]`
- `bool bSelectEdgeLoops [When true, will select edge loops. Edge loops are either paths through vertices with 4 edges, or boundaries of holes.]`
- `bool bSelectEdgeRings [When set, will select rings of edges that are opposite each other across a quad face.]`
- `bool bSelectEdges []`
- `bool bSelectFaces []`
- `bool bSelectVertices []`

---


### UMeshDescriptionBase


**方法**:

- `ComputePolygonTriangulation(FPolygonID PolygonID)`  
  Generates triangles and internal edges for the given polygon
- `FEdgeID CreateEdge(FVertexID VertexID0, FVertexID VertexID1)`  
  Adds a new edge to the mesh and returns its ID
- `CreateEdgeWithID(FEdgeID EdgeID, FVertexID VertexID0, FVertexID VertexID1)`  
  Adds a new edge to the mesh with the given ID
- `FPolygonID CreatePolygon(FPolygonGroupID PolygonGroupID, TArray<FVertexInstanceID>& VertexInstanceIDs, TArray<FEdgeID>& NewEdgeIDs)`  
  Adds a new polygon to the mesh and returns its ID. This will also make any missing edges, and all constituent triangles.
- `FPolygonGroupID CreatePolygonGroup()`  
  Adds a new polygon group to the mesh and returns its ID
- `CreatePolygonGroupWithID(FPolygonGroupID PolygonGroupID)`  
  Adds a new polygon group to the mesh with the given ID
- `CreatePolygonWithID(FPolygonID PolygonID, FPolygonGroupID PolygonGroupID, TArray<FVertexInstanceID>& VertexInstanceIDs, TArray<FEdgeID>& NewEdgeIDs)`  
  Adds a new polygon to the mesh with the given ID. This will also make any missing edges, and all constituent triangles.
- `FTriangleID CreateTriangle(FPolygonGroupID PolygonGroupID, TArray<FVertexInstanceID> VertexInstanceIDs, TArray<FEdgeID>& NewEdgeIDs)`  
  Adds a new triangle to the mesh and returns its ID. This will also make an encapsulating polygon, and any missing edges.
- `CreateTriangleWithID(FTriangleID TriangleID, FPolygonGroupID PolygonGroupID, TArray<FVertexInstanceID> VertexInstanceIDs, TArray<FEdgeID>& NewEdgeIDs)`  
  Adds a new triangle to the mesh with the given ID. This will also make an encapsulating polygon, and any missing edges.
- `FVertexID CreateVertex()`  
  Adds a new vertex to the mesh and returns its ID
- `FVertexInstanceID CreateVertexInstance(FVertexID VertexID)`  
  Adds a new vertex instance to the mesh and returns its ID
- `CreateVertexInstanceWithID(FVertexInstanceID VertexInstanceID, FVertexID VertexID)`  
  Adds a new vertex instance to the mesh with the given ID
- `CreateVertexWithID(FVertexID VertexID)`  
  Adds a new vertex to the mesh with the given ID
- `DeleteEdge(FEdgeID EdgeID, TArray<FVertexID>& OrphanedVertices)`  
  Deletes an edge from a mesh
- `DeletePolygon(FPolygonID PolygonID, TArray<FEdgeID>& OrphanedEdges, TArray<FVertexInstanceID>& OrphanedVertexInstances, TArray<FPolygonGroupID>& OrphanedPolygonGroups)`  
  Deletes a polygon from the mesh
- `DeletePolygonGroup(FPolygonGroupID PolygonGroupID)`  
  Deletes a polygon group from the mesh
- `DeleteTriangle(FTriangleID TriangleID, TArray<FEdgeID>& OrphanedEdges, TArray<FVertexInstanceID>& OrphanedVertexInstances, TArray<FPolygonGroupID>& OrphanedPolygonGroupsPtr)`  
  Deletes a triangle from the mesh
- `DeleteVertex(FVertexID VertexID)`  
  Deletes a vertex from the mesh
- `DeleteVertexInstance(FVertexInstanceID VertexInstanceID, TArray<FVertexID>& OrphanedVertices)`  
  Deletes a vertex instance from a mesh
- `Empty()`  
  Empty the mesh description
- `GetEdgeConnectedPolygons(FEdgeID EdgeID, TArray<FPolygonID>& OutConnectedPolygonIDs) const`  
  Returns the polygons connected to this edge
- `GetEdgeConnectedTriangles(FEdgeID EdgeID, TArray<FTriangleID>& OutConnectedTriangleIDs) const`  
  Returns reference to an array of triangle IDs connected to this edge
- `int GetEdgeCount() const`  
  Returns the number of edges
- `FVertexID GetEdgeVertex(FEdgeID EdgeID, int VertexNumber) const`  
  Returns the vertex ID corresponding to one of the edge endpoints
- `GetEdgeVertices(FEdgeID EdgeID, TArray<FVertexID>& OutVertexIDs) const`  
  Returns a pair of vertex IDs defining the edge
- `int GetNumEdgeConnectedPolygons(FEdgeID EdgeID) const`  
  Returns the number of polygons connected to this edge
- `int GetNumEdgeConnectedTriangles(FEdgeID EdgeID) const`  
  Returns the number of triangles connected to this edge
- `int GetNumPolygonGroupPolygons(FPolygonGroupID PolygonGroupID) const`  
  Returns the number of polygons in this polygon group
- `int GetNumPolygonInternalEdges(FPolygonID PolygonID) const`  
  Return the number of internal edges in this polygon
- `int GetNumPolygonTriangles(FPolygonID PolygonID) const`  
  Return the number of triangles which comprise this polygon
- `int GetNumPolygonVertices(FPolygonID PolygonID) const`  
  Returns the number of vertices this polygon has
- `int GetNumVertexConnectedEdges(FVertexID VertexID) const`  
  Returns number of edges connected to this vertex
- `int GetNumVertexConnectedPolygons(FVertexID VertexID) const`  
  Returns the number of polygons connected to this vertex
- `int GetNumVertexConnectedTriangles(FVertexID VertexID) const`  
  Returns number of triangles connected to this vertex
- `int GetNumVertexInstanceConnectedPolygons(FVertexInstanceID VertexInstanceID) const`  
  Returns the number of polygons connected to this vertex instance.
- `int GetNumVertexInstanceConnectedTriangles(FVertexInstanceID VertexInstanceID) const`  
  Returns the number of triangles connected to this vertex instance
- `int GetNumVertexVertexInstances(FVertexID VertexID) const`  
  Returns number of vertex instances created from this vertex
- `GetPolygonAdjacentPolygons(FPolygonID PolygonID, TArray<FPolygonID>& OutPolygonIDs) const`  
  Populates the passed array with adjacent polygons
- `int GetPolygonCount() const`  
  Returns the number of polygons
- `int GetPolygonGroupCount() const`  
  Returns the number of polygon groups
- `GetPolygonGroupPolygons(FPolygonGroupID PolygonGroupID, TArray<FPolygonID>& OutPolygonIDs) const`  
  Returns the polygons associated with the given polygon group
- `GetPolygonInternalEdges(FPolygonID PolygonID, TArray<FEdgeID>& OutEdgeIDs) const`  
  Populate the provided array with a list of edges which are internal to the polygon, i.e. those which separate
          constituent triangles.
- `GetPolygonPerimeterEdges(FPolygonID PolygonID, TArray<FEdgeID>& OutEdgeIDs) const`  
  Returns the edges which form the polygon perimeter
- `FPolygonGroupID GetPolygonPolygonGroup(FPolygonID PolygonID) const`  
  Return the polygon group associated with a polygon
- `GetPolygonTriangles(FPolygonID PolygonID, TArray<FTriangleID>& OutTriangleIDs) const`  
  Return reference to an array of triangle IDs which comprise this polygon
- `GetPolygonVertexInstances(FPolygonID PolygonID, TArray<FVertexInstanceID>& OutVertexInstanceIDs) const`  
  Returns reference to an array of VertexInstance IDs forming the perimeter of this polygon
- `GetPolygonVertices(FPolygonID PolygonID, TArray<FVertexID>& OutVertexIDs) const`  
  Returns the vertices which form the polygon perimeter
- `GetTriangleAdjacentTriangles(FTriangleID TriangleID, TArray<FTriangleID>& OutTriangleIDs) const`  
  Returns the adjacent triangles to this triangle
- `int GetTriangleCount() const`  
  Returns the number of triangles
- `GetTriangleEdges(FTriangleID TriangleID, TArray<FEdgeID>& OutEdgeIDs) const`  
  Returns the edges which define this triangle
- `FPolygonID GetTrianglePolygon(FTriangleID TriangleID) const`  
  Get the polygon which contains this triangle
- `FPolygonGroupID GetTrianglePolygonGroup(FTriangleID TriangleID) const`  
  Get the polygon group which contains this triangle
- `FVertexInstanceID GetTriangleVertexInstance(FTriangleID TriangleID, int Index) const`  
  Get the specified vertex instance by index
- `GetTriangleVertexInstances(FTriangleID TriangleID, TArray<FVertexInstanceID>& OutVertexInstanceIDs) const`  
  Get the vertex instances which define this triangle
- `GetTriangleVertices(FTriangleID TriangleID, TArray<FVertexID>& OutVertexIDs) const`  
  Returns the vertices which define this triangle
- `GetVertexAdjacentVertices(FVertexID VertexID, TArray<FVertexID>& OutAdjacentVertexIDs) const`  
  Returns the vertices adjacent to this vertex
- `GetVertexConnectedEdges(FVertexID VertexID, TArray<FEdgeID>& OutEdgeIDs) const`  
  Returns reference to an array of Edge IDs connected to this vertex
- `GetVertexConnectedPolygons(FVertexID VertexID, TArray<FPolygonID>& OutConnectedPolygonIDs) const`  
  Returns the polygons connected to this vertex
- `GetVertexConnectedTriangles(FVertexID VertexID, TArray<FTriangleID>& OutConnectedTriangleIDs) const`  
  Returns the triangles connected to this vertex
- `int GetVertexCount() const`  
  Returns the number of vertices
- `GetVertexInstanceConnectedPolygons(FVertexInstanceID VertexInstanceID, TArray<FPolygonID>& OutConnectedPolygonIDs) const`  
  Returns the polygons connected to this vertex instance
- `GetVertexInstanceConnectedTriangles(FVertexInstanceID VertexInstanceID, TArray<FTriangleID>& OutConnectedTriangleIDs) const`  
  Returns reference to an array of Triangle IDs connected to this vertex instance
- `int GetVertexInstanceCount() const`  
  Returns the number of vertex instances
- `FVertexInstanceID GetVertexInstanceForPolygonVertex(FPolygonID PolygonID, FVertexID VertexID) const`  
  Return the vertex instance which corresponds to the given vertex on the given polygon, or INDEX_NONE
- `FVertexInstanceID GetVertexInstanceForTriangleVertex(FTriangleID TriangleID, FVertexID VertexID) const`  
  Return the vertex instance which corresponds to the given vertex on the given triangle, or INDEX_NONE
- `FEdgeID GetVertexInstancePairEdge(FVertexInstanceID VertexInstanceID0, FVertexInstanceID VertexInstanceID1) const`  
  Returns the edge ID defined by the two given vertex instance IDs, if there is one; otherwise INDEX_NONE
- `FVertexID GetVertexInstanceVertex(FVertexInstanceID VertexInstanceID) const`  
  Returns the vertex ID associated with the given vertex instance
- `FEdgeID GetVertexPairEdge(FVertexID VertexID0, FVertexID VertexID1) const`  
  Returns the edge ID defined by the two given vertex IDs, if there is one; otherwise INDEX_NONE
- `FVector GetVertexPosition(FVertexID VertexID) const`  
  Gets a vertex position
- `GetVertexVertexInstances(FVertexID VertexID, TArray<FVertexInstanceID>& OutVertexInstanceIDs) const`  
  Returns reference to an array of VertexInstance IDs instanced from this vertex
- `bool IsEdgeInternal(FEdgeID EdgeID) const`  
  Determine whether a given edge is an internal edge between triangles of a polygon
- `bool IsEdgeInternalToPolygon(FEdgeID EdgeID, FPolygonID PolygonID) const`  
  Determine whether a given edge is an internal edge between triangles of a specific polygon
- `bool IsEdgeValid(FEdgeID EdgeID) const`  
  Returns whether the passed edge ID is valid
- `bool IsEmpty() const`  
  Return whether the mesh description is empty
- `bool IsPolygonGroupValid(FPolygonGroupID PolygonGroupID) const`  
  Returns whether the passed polygon group ID is valid
- `bool IsPolygonValid(FPolygonID PolygonID) const`  
  Returns whether the passed polygon ID is valid
- `bool IsTrianglePartOfNgon(FTriangleID TriangleID) const`  
  Determines if this triangle is part of an n-gon
- `bool IsTriangleValid(FTriangleID TriangleID) const`  
  Returns whether the passed triangle ID is valid
- `bool IsVertexInstanceValid(FVertexInstanceID VertexInstanceID) const`  
  Returns whether the passed vertex instance ID is valid
- `bool IsVertexOrphaned(FVertexID VertexID) const`  
  Returns whether a given vertex is orphaned, i.e. it doesn't form part of any polygon
- `bool IsVertexValid(FVertexID VertexID) const`  
  Returns whether the passed vertex ID is valid
- `ReserveNewEdges(int NumberOfNewEdges)`  
  Reserves space for this number of new edges
- `ReserveNewPolygonGroups(int NumberOfNewPolygonGroups)`  
  Reserves space for this number of new polygon groups
- `ReserveNewPolygons(int NumberOfNewPolygons)`  
  Reserves space for this number of new polygons
- `ReserveNewTriangles(int NumberOfNewTriangles)`  
  Reserves space for this number of new triangles
- `ReserveNewVertexInstances(int NumberOfNewVertexInstances)`  
  Reserves space for this number of new vertex instances
- `ReserveNewVertices(int NumberOfNewVertices)`  
  Reserves space for this number of new vertices
- `ReversePolygonFacing(FPolygonID PolygonID)`  
  Reverse the winding order of the vertices of this polygon
- `SetPolygonPolygonGroup(FPolygonID PolygonID, FPolygonGroupID PolygonGroupID)`  
  Sets the polygon group associated with a polygon
- `SetPolygonVertexInstances(FPolygonID PolygonID, TArray<FVertexInstanceID> VertexInstanceIDs)`  
  Set the vertex instance at the given index around the polygon to the new value
- `SetVertexPosition(FVertexID VertexID, FVector Position)`  
  Sets a vertex position

---


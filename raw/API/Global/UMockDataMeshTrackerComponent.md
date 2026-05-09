### UMockDataMeshTrackerComponent


The MeshTrackerComponent class manages requests for environmental mesh data, processes the results and provides
them to the calling system. The calling system is able request environmental mesh data within a specified area.
Various other search criteria can be set via this class's public properties.  Mesh data requests are processed
on a separate thread.  Once a mesh data request has been processed the calling system will be notified via an
FOnMeshTrackerUpdated broadcast.

**属性**:

- `TArray<FColor> BlockVertexColors [Colors through which we cycle when setting vertex color by block.]`
- `FOnMockDataMeshTrackerUpdated__MockDataMeshTrackerComponent OnMeshTrackerUpdated [Activated whenever new information about this mesh tracker is detected.]`
- `bool RequestNormals [If true, the system will generate normals for the triangle vertices.]`
- `bool RequestVertexConfidence [If true, the system will generate the mesh confidence values for the triangle vertices.
These confidence values can be used to determine if the user needs to scan more.]`
- `bool ScanWorld [Set to true to start scanning the world for meshes.]`
- `float32 UpdateInterval [Update Interval in Seconds.]`
- `FLinearColor VertexColorFromConfidenceOne [Color mapped to confidence value of one.]`
- `FLinearColor VertexColorFromConfidenceZero [Color mapped to confidence value of zero.]`
- `EMeshTrackerVertexColorMode VertexColorMode [Vertex Colors can be unused, or filled with several types of information.]`


**方法**:

- `ConnectMRMesh(UMRMeshComponent InMRMeshPtr)`  
  Sets the procedural mesh component that will store and display the environmental mesh results.
@param InMRMeshPtr The procedural mesh component to store the query result in.
- `DisconnectMRMesh(UMRMeshComponent InMRMeshPtr)`  
  Unlinks the current procedural mesh component from the mesh tracking system.
@param InMRMeshPtr The procedural mesh component to unlink from the mesh tracking system.

---


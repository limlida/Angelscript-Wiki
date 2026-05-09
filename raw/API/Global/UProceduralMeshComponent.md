### UProceduralMeshComponent


Component that allows you to specify custom triangle mesh geometry
Beware! This feature is experimental and may be substantially changed in future releases.

**属性**:

- `bool bUseAsyncCooking [Controls whether the physics cooking should be done off the game thread. This should be used when collision geometry doesn't have to be immediately up to date (For example streaming in far away objects)]`
- `bool bUseComplexAsSimpleCollision [Controls whether the complex (Per poly) geometry should be treated as 'simple' collision.
Should be set to false if this component is going to be given simple collision and simulated.]`


**方法**:

- `AddCollisionConvexMesh(TArray<FVector> ConvexVerts)`  
  Add simple collision convex to this component
- `ClearAllMeshSections()`  
  Clear all mesh sections and reset to empty state
- `ClearCollisionConvexMeshes()`  
  Remove collision meshes from this component
- `ClearMeshSection(int SectionIndex)`  
  Clear a section of the procedural mesh. Other sections do not change index.
- `CreateMeshSection_LinearColor(int SectionIndex, TArray<FVector> Vertices, TArray<int> Triangles, TArray<FVector> Normals, TArray<FVector2D> UV0, TArray<FVector2D> UV1, TArray<FVector2D> UV2, TArray<FVector2D> UV3, TArray<FLinearColor> VertexColors, TArray<FProcMeshTangent> Tangents, bool bCreateCollision, bool bSRGBConversion = false)`  
  Create/replace a section for this procedural mesh component.
@param  SectionIndex            Index of the section to create or replace.
@param  Vertices                        Vertex buffer of all vertex positions to use for this mesh section.
@param  Triangles                       Index buffer indicating which vertices make up each triangle. Length must be a multiple of 3.
@param  Normals                         Optional array of normal vectors for each vertex. If supplied, must be same length as Vertices array.
@param  UV0                                     Optional array of texture co-ordinates for each vertex. If supplied, must be same length as Vertices array.
@param  VertexColors            Optional array of colors for each vertex. If supplied, must be same length as Vertices array.
@param  Tangents                        Optional array of tangent vector for each vertex. If supplied, must be same length as Vertices array.
@param  bCreateCollision        Indicates whether collision should be created for this section. This adds significant cost.
@param  bSRGBConversion         Whether to do sRGB conversion when converting FLinearColor to FColor
- `int GetNumSections() const`  
  Returns number of sections currently created for this component
- `bool IsMeshSectionVisible(int SectionIndex) const`  
  Returns whether a particular section is currently visible
- `SetMeshSectionVisible(int SectionIndex, bool bNewVisibility)`  
  Control visibility of a particular section
- `UpdateMeshSection_LinearColor(int SectionIndex, TArray<FVector> Vertices, TArray<FVector> Normals, TArray<FVector2D> UV0, TArray<FVector2D> UV1, TArray<FVector2D> UV2, TArray<FVector2D> UV3, TArray<FLinearColor> VertexColors, TArray<FProcMeshTangent> Tangents, bool bSRGBConversion = true)`  
  Updates a section of this procedural mesh component. This is faster than CreateMeshSection, but does not let you change topology. Collision info is also updated.
@param  Vertices                        Vertex buffer of all vertex positions to use for this mesh section.
@param  Normals                         Optional array of normal vectors for each vertex. If supplied, must be same length as Vertices array.
@param  UV0                                     Optional array of texture co-ordinates for each vertex. If supplied, must be same length as Vertices array.
@param  VertexColors            Optional array of colors for each vertex. If supplied, must be same length as Vertices array.
@param  Tangents                        Optional array of tangent vector for each vertex. If supplied, must be same length as Vertices array.
@param  bSRGBConversion         Whether to do sRGB conversion when converting FLinearColor to FColor

---


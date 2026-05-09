### USkeletalMeshEditorSubsystem


USkeletalMeshEditorSubsystem
Subsystem for exposing skeletal mesh functionality to scripts

**方法**:

- `int GetLODMaterialSlot(USkeletalMesh SkeletalMesh, int LODIndex, int SectionIndex)`  
  Gets the material slot used for a specific LOD section.
@param       SkeletalMesh            SkeletalMesh to get the material index from.
@param       LODIndex                        Index of the StaticMesh LOD.
@param       SectionIndex            Index of the StaticMesh Section.
@return  MaterialSlotIndex   Index of the material slot used by the section or INDEX_NONE in case of error.
- `UMaterialInterface GetMaterialSlotOverlayMaterial(const USkeletalMesh SkeletalMesh, int SlotIndex)`  
  Get the overlay material for a material slot in a Skeletal Mesh.

@param SkeletalMesh                  Mesh to get material overlay from.
@param SlotIndex                             Index of the skeletal mesh material slot.
@return the material interface or null if there is no overlay material.
- `int GetNumSections(USkeletalMesh SkeletalMesh, int LODIndex)`  
  Get number of sections for a LOD of a Skeletal Mesh

@param SkeletalMesh          Mesh to get number of vertices from.
@param LODIndex                      Index of the mesh LOD.
@return Number of sections. Returns INDEX_NONE if invalid mesh or LOD index.
- `int GetNumVerts(USkeletalMesh SkeletalMesh, int LODIndex)`  
  Get number of mesh vertices for an LOD of a Skeletal Mesh

@param SkeletalMesh          Mesh to get number of vertices from.
@param LODIndex                      Index of the mesh LOD.
@return Number of vertices. Returns 0 if invalid mesh or LOD index.
- `bool GetSectionCastShadow(const USkeletalMesh SkeletalMesh, int LODIndex, int SectionIndex, bool& bOutCastShadow)`  
  Get bCastShadow from a section of a LOD of a Skeletal Mesh

@param SkeletalMesh                  Mesh to get number of vertices from.
@param LodIndex                              Index of the mesh LOD.
@param SectionIndex                  Index of the LOD section.
@param bOutCastShadow        The function will set the bCastShadow used by the section
@return false if invalid mesh or LOD index or section index.
- `bool GetSectionRecomputeTangent(const USkeletalMesh SkeletalMesh, int LODIndex, int SectionIndex, bool& bOutRecomputeTangent)`  
  Get bRecomputeTangent from a section of a LOD of a Skeletal Mesh

@param SkeletalMesh                  Mesh to get number of vertices from.
@param LodIndex                              Index of the mesh LOD.
@param SectionIndex                  Index of the LOD section.
@param bOutRecomputeTangent  The function will set the bRecomputeTangent used by the section
@return false if invalid mesh or LOD index or section index.
- `bool GetSectionRecomputeTangentsVertexMaskChannel(const USkeletalMesh SkeletalMesh, int LODIndex, int SectionIndex, uint8& OutRecomputeTangentsVertexMaskChannel)`  
  Get RecomputeTangentsVertexMaskChannel from a section of a LOD of a Skeletal Mesh

@param SkeletalMesh                  Mesh to get number of vertices from.
@param LodIndex                              Index of the mesh LOD.
@param SectionIndex                  Index of the LOD section.
@param OutRecomputeTangentsVertexMaskChannel The function will set the RecomputeTangentsVertexMaskChannel used by the section
@return false if invalid mesh or LOD index or section index.
- `bool GetSectionVisibleInRayTracing(const USkeletalMesh SkeletalMesh, int LODIndex, int SectionIndex, bool& bOutVisibleInRayTracing)`  
  Get bVisibleInRayTracing from a section of a LOD of a Skeletal Mesh

@param SkeletalMesh                  Mesh to get number of vertices from.
@param LodIndex                              Index of the mesh LOD.
@param SectionIndex                  Index of the LOD section.
@param bOutVisibleInRayTracing       The function will set the bVisibleInRayTracing used by the section
@return false if invalid mesh or LOD index or section index.
- `UMaterialInterface GetSkeletalMeshOverlayMaterial(const USkeletalMesh SkeletalMesh)`  
  Get the overlay material for a Skeletal Mesh.

@param SkeletalMesh                  Mesh to get the material overlay from.
@return the material interface or null if there is no material.
- `bool SetMaterialSlotOverlayMaterial(USkeletalMesh SkeletalMesh, int SlotIndex, UMaterialInterface NewSectionOverlayMaterial)`  
  Set the overlay material for a material slot in a Skeletal Mesh.

@param SkeletalMesh                  Mesh to set material overlay to.
@param SlotIndex                             Index of the skeletal mesh material slot.
@param NewSectionOverlayMaterial     The function will set the OverlayMaterial used by the slot
@return false if invalid mesh or material slot index is invalid.
- `bool SetSectionCastShadow(USkeletalMesh SkeletalMesh, int LODIndex, int SectionIndex, bool bCastShadow)`  
  Set bCastShadow for a section of a LOD of a Skeletal Mesh.

@param SkeletalMesh                  Mesh to get number of vertices from.
@param LodIndex                              Index of the mesh LOD.
@param SectionIndex                  Index of the LOD section.
@param bCastShadow   The function will set the bCastShadow used by the section
@return false if invalid mesh or LOD index or section index.
- `bool SetSectionRecomputeTangent(USkeletalMesh SkeletalMesh, int LODIndex, int SectionIndex, bool bRecomputeTangent)`  
  Set bRecomputeTangent for a section of a LOD of a Skeletal Mesh.

@param SkeletalMesh                  Mesh to get number of vertices from.
@param LodIndex                              Index of the mesh LOD.
@param SectionIndex                  Index of the LOD section.
@param bRecomputeTangent     The function will set the bRecomputeTangent used by the section
@return false if invalid mesh or LOD index or section index.
- `bool SetSectionRecomputeTangentsVertexMaskChannel(USkeletalMesh SkeletalMesh, int LODIndex, int SectionIndex, uint8 RecomputeTangentsVertexMaskChannel)`  
  Set RecomputeTangentsVertexMaskChannel for a section of a LOD of a Skeletal Mesh.

@param SkeletalMesh                  Mesh to get number of vertices from.
@param LodIndex                              Index of the mesh LOD.
@param SectionIndex                  Index of the LOD section.
@param RecomputeTangentsVertexMaskChannel    The function will set the RecomputeTangentsVertexMaskChannel used by the section
@return false if invalid mesh or LOD index or section index.
- `bool SetSectionVisibleInRayTracing(USkeletalMesh SkeletalMesh, int LODIndex, int SectionIndex, bool bVisibleInRayTracing)`  
  Set bVisibleInRayTracing for a section of a LOD of a Skeletal Mesh.

@param SkeletalMesh                  Mesh to get number of vertices from.
@param LodIndex                              Index of the mesh LOD.
@param SectionIndex                  Index of the LOD section.
@param bVisibleInRayTracing  The function will set the bVisibleInRayTracing used by the section
@return false if invalid mesh or LOD index or section index.
- `bool SetSkeletalMeshOverlayMaterial(USkeletalMesh SkeletalMesh, UMaterialInterface NewOverlayMaterial)`  
  Set the overlay material for a Skeletal Mesh.

@param SkeletalMesh                                  Mesh to set material overlay to.
@param NewOverlayMaterial            the OverlayMaterial we set for the skeletal mesh
@return false if invalid mesh.

---


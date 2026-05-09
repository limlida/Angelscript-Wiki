### UExtrudeMeshSelectionToolProperties


**属性**:

- `float CreaseAngle [Specify the Crease Angle used to split the sides of the Extrusion into separate Groups]`
- `float ExtrudeDistance [The Extrusion Distance used in Fixed Input Mode]`
- `EExtrudeMeshSelectionInteractionMode InputMode [Control how the Extruded Area should be Transformed]`
- `int NumSubdivisions [Specify the number of subdivisions along the sides of the Extrusion]`
- `float RaycastMaxDistance [Control the maximum distance each vertex may be moved in Raycast To Plane Mode]`
- `EExtrudeMeshSelectionRegionModifierMode RegionMode [Control how the Extruded Area should be deformed as part of the Extrusion]`
- `int SetMaterialID [Constant Material ID used when MaterialIDs are not being inferred, or no adjacent MaterialID exists]`
- `float UVScale [The automatically-generated UVs on the sides of the Extrusion are scaled by this value]`
- `bool bGroupPerSubdivision [Control whether a new Group is generated for each Subdivision]`
- `bool bInferGroupsFromNbrs [Control whether a single Group should be generated along the sides of the Extrusion, or multiple Groups based on the adjacent Groups around the Extruded Area border]`
- `bool bInferMaterialID [Control whether SetMaterialID is assigned to all triangles along the sides of the Extrusion, or if MaterialIDs should be inferred from the Extruded Area]`
- `bool bReplaceSelectionGroups [Control whether groups in the Extruded Area are mapped to new Groups, or replaced with a single new Group]`
- `bool bShellsToSolids [If the Extruded Area has a fully open border, this option determines if Extrusion will create a Solid mesh or leave the base "open"]`
- `bool bShowInputMaterials [Control whether the original Mesh Materials should be shown, or a visualization of the extruded Groups]`
- `bool bUVIslandPerGroup [Control whether a separate UV island should be generated for each output Group on the sides of the Extrusion, or a single UV island wrapping around the entire "tube"]`

---


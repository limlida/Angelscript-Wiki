### USubdividePolyToolProperties


Properties

**属性**:

- `ESubdivisionBoundaryScheme BoundaryScheme [How to treat mesh boundaries]`
- `float ExtraCornerAngleThresholdDegrees [How acute an angle between two edges needs to be to add an extra corner there when Add Extra Corners is true.]`
- `ESubdivisionOutputNormals NormalComputationMethod []`
- `int SubdivisionLevel [Number of iterations/levels of subdivision to perform]`
- `ESubdivisionScheme SubdivisionScheme []`
- `ESubdivisionOutputUVs UVComputationMethod []`
- `bool bAddExtraCorners [When using the group topology for subdivision, whether to add extra corners at sharp group edge bends on mesh boundaries. Note: We cannot add extra corners on non-boundary group edges, as this would create non-manifold geometry on subdivision.]`
- `bool bNewPolyGroups [Assign a new PolyGroup ID to each newly created face]`
- `bool bRenderCage [Display the mesh corresponding to Subdivision Level 0]`
- `bool bRenderGroups [Display each PolyGroup with an auto-generated color]`

---


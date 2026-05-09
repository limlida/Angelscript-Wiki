### UFractureModeSettings


Settings for the Fracture Editor Mode.

**属性**:

- `float32 ConvexCanExceedFraction [Default fraction of geometry volume by which a cluster's convex hull volume can exceed the actual geometry volume before instead using the hulls of the children.  0 means the convex volume cannot exceed the geometry volume; 1 means the convex volume is allowed to be 100% larger (2x) the geometry volume.]`
- `float ConvexFractionAllowRemove [Default fraction of convex hulls for a transform that we can remove before using the hulls of the children]`
- `float32 ConvexOverlapRemovalShrinkPercent [Default overlap removal shrink percent (in range 0-100) for convex hulls of new geometry collections. Overlap removal will be computed assuming convex shapes will be scaled down by this percentage.]`
- `EConvexOverlapRemoval ConvexRemoveOverlaps [Default overlap removal setting for convex hulls of new geometry collections]`
- `float32 ConvexSimplificationDistanceThreshold [Default simplification threshold for convex hulls of new geometry collections]`
- `EFractureModeNewAssetLocation NewAssetLocation [The default asset folder presented when using the "New" tool to create a Geometry Collection in Fracture Mode]`
- `EConnectionContactMethod ProximityConnectionContactAreaMethod [Method to use to determine the area of the contact for transforms that are connected in the connection graph used for simulation. Only used if "Use As Connection Graph" is enabled.]`
- `EProximityContactMethod ProximityContactMethod [Method to use to determine the contact between two pieces, if the Contact Threshold is greater than 0, for the purpose of filtering out too-small contacts]`
- `float32 ProximityContactThreshold [If greater than zero, proximity will be additionally filtered by a 'contact' threshold, in cm, to exclude grazing / corner proximity]`
- `float32 ProximityDistanceThreshold [When Proximity Detection Method is Convex Hull, how close two hulls need to be to be considered as 'in proximity']`
- `EProximityMethod ProximityMethod [Default method used to detect proximity of geometry in a new geometry collection]`
- `bool bProximityUseAsConnectionGraph [Whether to automatically transform the proximity graph into a connection graph to be used for simulation]`

---


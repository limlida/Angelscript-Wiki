### FProximityDataflowNode


Update the proximity (contact) graph for the bones in a Collection

**属性**:

- `FLinearColor CenterColor []`
- `float32 CenterSize []`
- `FLinearColor Color []`
- `int ColorRandomSeed [Random seed]`
- `EConnectionContactAreaMethodEnum ContactAreaMethod [The method used to compute contact areas for simulation purposes (only when 'Use As Connection Graph' is enabled)]`
- `float32 ContactThreshold [If greater than zero, proximity will be additionally filtered by a 'contact' threshold, in cm, to exclude grazing / corner proximity]`
- `float32 DistanceThreshold [If hull-based proximity detection is enabled, amount to expand hulls when searching for overlapping neighbors]`
- `EProximityContactFilteringMethodEnum FilterContactMethod [How to use the Contact Threshold (if > 0) to filter out unwanted small or corner contacts from the proximity graph. If contact threshold is zero, no filtering is applied.]`
- `float32 LineWidthMultiplier []`
- `FLinearColor OverrideColor []`
- `EProximityMethodEnum ProximityMethod [Which method to use to decide whether a given piece of geometry is in proximity with another]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bRandomizeColor [Randomize color per connection]`
- `bool bRecomputeConvexHulls [Whether to compute new convex hulls for proximity, or use the pre-existing hulls on the Collection, when using convex hulls to determine proximity]`
- `bool bUseAsConnectionGraph [Whether to automatically transform the proximity graph into a connection graph to be used for simulation]`


**方法**:

- `FProximityDataflowNode& opAssign(FProximityDataflowNode Other)`

---


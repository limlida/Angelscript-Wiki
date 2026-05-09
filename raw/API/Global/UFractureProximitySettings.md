### UFractureProximitySettings


Settings controlling how proximity is detected for geometry collections

**属性**:

- `FColor CenterColor [Point color for centers]`
- `float32 CenterSize [Point size for centers]`
- `EConnectionContactMethod ContactAreaMethod [Method to use for determining contact areas that define the strength of connections for destruction simulation]`
- `EProximityContactMethod ContactMethod [Method to use to determine the contact between two pieces, if the Contact Threshold is greater than 0]`
- `float ContactThreshold [If greater than zero, proximity will be additionally filtered by a 'contact' threshold, in cm, to exclude grazing / corner proximity]`
- `float DistanceThreshold [If hull-based proximity detection is enabled, amount to expand hulls when searching for overlapping neighbors]`
- `FColor LineColor [Line color for connections]`
- `float32 LineThickness [Line thickness for connections]`
- `EProximityMethod Method [Which method to use to decide whether a given piece of geometry is in proximity with another]`
- `bool bOnlyShowForSelected [Whether to only show the proximity graph connections for selected bones]`
- `bool bShowProximity [Whether to display the proximity graph edges]`
- `bool bUseAsConnectionGraph [Whether to automatically transform the proximity graph into a connection graph to be used for simulation]`

---


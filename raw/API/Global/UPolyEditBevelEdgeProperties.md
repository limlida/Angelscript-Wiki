### UPolyEditBevelEdgeProperties


**属性**:

- `float BevelDistance [Distance that each beveled mesh edge is inset from its initial position]`
- `float32 RoundWeight [Roundness of the bevel. Ignored if Subdivisions = 0.]`
- `int SetMaterialID [Material ID to set on the new faces introduced by bevel operation, unless bInferMaterialID=true and non-ambiguous MaterialID can be inferred from adjacent faces]`
- `int Subdivisions [Number of edge loops added along the bevel faces]`
- `bool bInferMaterialID [If true, when faces on either side of a beveled mesh edges have the same Material ID, beveled edge will be set to that Material ID. Otherwise SetMaterialID is used.]`

---


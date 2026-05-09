### UPolygonOnMeshToolProperties


Standard properties of the polygon-on-mesh operations

**属性**:

- `float32 CornerRatio [Corner Ratio of RoundRect Polygon]`
- `float32 Height [Height of Polygon]`
- `EEmbeddedPolygonOpMethod Operation [What operation to apply using the Polygon]`
- `float32 PolygonScale [Scale of polygon to embed]`
- `EPolygonType Shape [Polygon Shape to use in this Operation]`
- `int Subdivisions [Number of sides in Circle or RoundRect Corner]`
- `float32 Width [Width of Polygon]`
- `bool bCanAcceptFailedResult [Whether the tool will allow accepting a result if the operation fails, for instance due to inability to insert the
polygon when not cutting with boolean, or due to unrepaired cracks in the result.]`
- `bool bCutWithBoolean [Use a volumetric boolean rather than curve projection; cuts through all layers and across edges]`
- `bool bShowIntermediateResultOnFailure [If an operation fails and we do not allow accepting the result, whether to show the intermediate failed result, or to
show the original mesh.]`
- `bool bTryToFixHoles [Automatically attempt to fill any open boundaries left by CSG (e.g. due to numerical errors)]`

---


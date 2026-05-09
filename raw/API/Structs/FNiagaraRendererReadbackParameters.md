### FNiagaraRendererReadbackParameters


**属性**:

- `int ExportNumTexCoords [How many vertex texture coordinates to export]`
- `TOptional<int> ViewIndexToCapture [When set we capture the batches from the view index provided
When unset we capture batches from all views]`
- `bool bApplyWPO [When enabled material WPO will be included in the exported data]`
- `bool bExportColor [When enabled vertex colors will be exported]`
- `bool bExportMaterials [When enabled we will attempt to export the materials used with each section
When disabled no materials will be assigned, so the default material will be used]`
- `bool bExportPosition [When enabled vertex positions will be exported]`
- `bool bExportTangentBasis [When enabled the vertex tangent basis will be exported]`


**方法**:

- `FNiagaraRendererReadbackParameters& opAssign(FNiagaraRendererReadbackParameters Other)`

---


### FNiagaraMeshRendererMeshProperties


**属性**:

- `FNiagaraParameterBindingWithValue LODBiasBinding [LOD bias to apply to the LOD calculation.]`
- `float32 LODDistanceFactor [Used in LOD calculation to modify the distance, i.e. increasing the value will make lower poly LODs transition closer to the camera.]`
- `FNiagaraParameterBindingWithValue LODLevelBinding [Absolute LOD level to use]`
- `ENiagaraMeshLODMode LODMode []`
- `FIntVector2 LODRange [Used to restrict the range of LODs we include when dynamically calculating the LOD level.]`
- `UStaticMesh Mesh [The mesh to use when rendering this slot]`
- `FNiagaraParameterBinding MeshParameterBinding [Binding to supported mesh types.]`
- `FVector PivotOffset [Offset of the mesh pivot]`
- `ENiagaraMeshPivotOffsetSpace PivotOffsetSpace [What space is the pivot offset in?]`
- `FRotator Rotation [Rotation of the mesh]`
- `FVector Scale [Scale of the mesh]`
- `bool bUseLODRange [When enabled you can restrict the LOD range we consider for LOD calculation.
This can be useful to reduce the performance impact, as it reduces the number of draw calls required.]`


**方法**:

- `FNiagaraMeshRendererMeshProperties& opAssign(FNiagaraMeshRendererMeshProperties Other)`

---


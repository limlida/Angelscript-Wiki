### FNiagaraGeometryCacheReference


**属性**:

- `UGeometryCache GeometryCache [Reference to the geometry cache asset to use (if the user parameter binding is not set)]`
- `FNiagaraUserParameterBinding GeometryCacheUserParamBinding [Use the UGeometryCache bound to this user variable if it is set to a valid value. If this is bound to a valid value and GeometryCache is also set, GeometryCacheUserParamBinding wins.]`
- `TArray<TObjectPtr<UMaterialInterface>> OverrideMaterials [The materials to be used instead of the GeometryCache's materials. If the GeometryCache requires more materials than exist in this array or any entry in this array is set to None, we will use the GeometryCache's existing material instead.]`


**方法**:

- `FNiagaraGeometryCacheReference& opAssign(FNiagaraGeometryCacheReference Other)`

---


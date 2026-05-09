### FLandscapeSplineMeshEntry


**属性**:

- `FVector2D CenterAdjust [Tweak to center the mesh correctly on the spline]`
- `ESplineMeshAxis ForwardAxis [Chooses the forward axis for the spline mesh orientation]`
- `TArray<TObjectPtr<UMaterialInterface>> MaterialOverrides [Overrides mesh's materials]`
- `UStaticMesh Mesh [Mesh to use on the spline]`
- `FVector Scale [Scale of the spline mesh, (Z=Forwards)]`
- `ESplineMeshAxis UpAxis [Chooses the up axis for the spline mesh orientation]`
- `bool bCenterH [Whether to automatically center the mesh horizontally on the spline]`
- `bool bNoZScaling [Disables scale to width on the mesh Z coordinate]`
- `bool bScaleToWidth [Whether to scale the mesh to fit the width of the spline]`


**方法**:

- `FLandscapeSplineMeshEntry& opAssign(FLandscapeSplineMeshEntry Other)`

---


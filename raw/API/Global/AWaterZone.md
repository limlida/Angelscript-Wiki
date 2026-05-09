### AWaterZone


**属性**:

- `float32 CaptureZOffset [Offsets the height above the water zone at which the WaterInfoTexture is rendered. This is applied after computing the maximum Z of all the water bodies within the zone.]`
- `FVector LocalTessellationExtent [The diameters in local space units for the region within which dynamic tessellation occurs. A smaller value increases the effective pixel density of the water info texture.]`
- `FOnWaterInfoTextureArrayCreated OnWaterInfoTextureArrayCreated`
- `int OverlapPriority [Higher number is higher priority. If Water Zones overlap and a water body does not have a manual water zone override, this priority will be used when automatically assigning the zone.]`
- `FIntPoint RenderTargetResolution`
- `int VelocityBlurRadius [Radius of the velocity blur in the finalize water info pass]`
- `UTextureRenderTarget2DArray WaterInfoTextureArray []`
- `int WaterInfoTextureArrayNumSlices []`
- `UWaterMeshComponent WaterMesh [The water mesh component]`
- `FVector2D ZoneExtent [The maximum size in local space of the water zone.]`
- `bool bAutoIncludeLandscapesAsTerrain [When set to true, all landscape proxies that intersect with the bounds of this water zone will be included as ground actors regardless if they have WaterTerrain components.]`
- `bool bEnableLocalOnlyTessellation [Enables the Local Tessellation mode for this water zone. In this mode, the WaterInfoTexture represents only a sliding window around the view location where the dynamically tessellated water mesh will be generated.
The size of the sliding window is defined by the LocalTessellationExtent parameter which determines the diameters in world space units. In this mode, both the water info texture and water quad tree are regenerated
at runtime.]`
- `bool bHalfPrecisionTexture [Determines if the WaterInfoTexture should be 16 or 32 bits per channel]`


**方法**:

- `int GetWaterZoneIndex() const`
- `SetFarMeshMaterial(UMaterialInterface InFarMaterial)`

---


### AWaterBody


Base class for all water body actors.

WaterBodyActors provide a spline-based workflow to create lakes, rivers, and oceans which automatically create meshes,
carve landscapes, and support physics interactions.

To create a new water body this class must be derived (native or blueprint) and have the `WaterBodyType` property changed to the specific water type.
The new class will automatically have a corresponding UWaterBodyComponent specific to that water body type.
The component class for each water body type can be defined in the Editor Settings.

**属性**:

- `UWaterSplineComponent SplineComp [The spline data attached to this water type.]`
- `UWaterBodyComponent WaterBodyComponent`
- `TSubclassOf<UWaterBodyCustomComponent> WaterBodyCustomComponentClass []`
- `int WaterBodyIndex [Unique Id for accessing (wave, ... ) data in GPU buffers]`
- `TSubclassOf<UWaterBodyLakeComponent> WaterBodyLakeComponentClass []`
- `TSubclassOf<UWaterBodyOceanComponent> WaterBodyOceanComponentClass []`
- `TSubclassOf<UWaterBodyRiverComponent> WaterBodyRiverComponentClass []`
- `EWaterBodyType WaterBodyType []`
- `UWaterWavesBase WaterWaves`


**方法**:

- `UWaterBodyComponent GetWaterBodyComponent() const`  
  Returns the water body component
- `EWaterBodyType GetWaterBodyType() const`  
  Returns the type of body
- `UWaterSplineComponent GetWaterSpline() const`  
  Returns water spline component
- `SetWaterWaves(UWaterWavesBase InWaterWaves)`

---


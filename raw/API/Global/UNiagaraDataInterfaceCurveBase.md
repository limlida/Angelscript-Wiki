### UNiagaraDataInterfaceCurveBase


Base class for curve data interfaces which facilitates handling the curve data in a standardized way.

**属性**:

- `UCurveBase CurveAsset []`
- `FName ExposedName [Sets a custom name for the binding to make it easier to identify.]`
- `float32 OptimizeThreshold [Threshold used to optimize the LUT.]`
- `bool bExposeCurve [Generates a texture for the curve which can be exposed to material bindings.]`
- `bool bOptimizeLUT [Do we optimize the LUT, this saves memory but may introduce errors.  Errors can be reduced modifying the threshold.]`
- `bool bOverrideOptimizeThreshold`
- `bool bUseLUT`

---


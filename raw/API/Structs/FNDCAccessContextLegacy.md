### FNDCAccessContextLegacy


Special legacy access context type. Used only to facilitate legacy NDCs to be usable by the new API.

**属性**:

- `FVector Location [In cases where there is no owning component for data being read or written to a data channel, we simply pass in a location. We can also use this when bOverrideLocaiton is set.]`
- `USceneComponent OwningComponent []`
- `bool bOverrideLocation [If true, even if an owning component is set, the data channel should use the Location value rather than the component location. If this is false, the NDC will get any location needed from the owning component.]`


**方法**:

- `FNDCAccessContextLegacy& opAssign(FNDCAccessContextLegacy Other)`

---


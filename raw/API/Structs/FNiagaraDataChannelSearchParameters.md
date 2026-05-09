### FNiagaraDataChannelSearchParameters


Legacy search parameters to support legacy code.

**属性**:

- `FVector Location [In cases where there is no owning component for data being read or written to a data channel, we simply pass in a location. We can also use this when bOverrideLocaiton is set.]`
- `USceneComponent OwningComponent [In cases where there is an owning component such as an object spawning from itself etc, then we pass that component in. Some handlers may only use it's location but others may make use of more data.]`
- `bool bOverrideLocation [If true, even if an owning component is set, the data channel should use the Location value rather than the component location. If this is false, the NDC will get any location needed from the owning component.]`


**方法**:

- `FNiagaraDataChannelSearchParameters& opAssign(FNiagaraDataChannelSearchParameters Other)`

---


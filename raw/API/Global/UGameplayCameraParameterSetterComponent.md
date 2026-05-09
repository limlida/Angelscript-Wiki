### UGameplayCameraParameterSetterComponent


**属性**:

- `float32 BlendInTime [The blend-in time.]`
- `float32 BlendOutTime [The blend-out time.]`
- `ECameraVariableSetterBlendType BlendType [The blend type.]`
- `FCameraRigAssetReference CameraRigReference [The camera asset whose parameters to override.]`


**方法**:

- `StartParameterSetters()`  
  Start setting parameters.
- `StopParameterSetters(bool bImmediately = false)`  
  Stop setting parameters.

@param bImmediately  If false, blend out the parameter overrides. If true, stop overrides immediately.

---


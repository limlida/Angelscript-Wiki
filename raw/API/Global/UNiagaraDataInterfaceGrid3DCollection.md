### UNiagaraDataInterfaceGrid3DCollection


**属性**:

- `int NumAttributes [Number of attributes stored on the grid]`
- `ENiagaraGpuBufferFormat OverrideBufferFormat [When enabled overrides the format used to store data inside the grid, otherwise uses the project default setting.  Lower bit depth formats will save memory and performance at the cost of precision.]`
- `FName PreviewAttribute [When enabled allows you to preview the grid in a debug display]`
- `FNiagaraUserParameterBinding RenderTargetUserParameter [Reference to a user parameter if we're reading one.]`
- `bool bOverrideFormat`
- `bool bPreviewGrid`


**方法**:

- `GetRawTextureSize(const UNiagaraComponent Component, int& SizeX, int& SizeY, int& SizeZ)`
- `GetTextureSize(const UNiagaraComponent Component, int& SizeX, int& SizeY, int& SizeZ)`

---


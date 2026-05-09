### UNiagaraDataInterfaceGrid2DCollection


**属性**:

- `ENiagaraGpuBufferFormat OverrideBufferFormat [When enabled overrides the format used to store data inside the grid, otherwise uses the project default setting.  Lower bit depth formats will save memory and performance at the cost of precision.]`
- `FName PreviewAttribute [When enabled allows you to preview the grid in a debug display]`
- `FNiagaraUserParameterBinding RenderTargetUserParameter [Reference to a user parameter if we're reading one.]`
- `bool bOverrideFormat`
- `bool bPreviewGrid`


**方法**:

- `GetTextureSize(const UNiagaraComponent Component, int& SizeX, int& SizeY)`

---


### UNiagaraDataInterfaceRenderTarget2DArray


**属性**:

- `TextureFilter OverrideRenderTargetFilter [When enabled overrides the filter of the render target, otherwise uses the project default setting.]`
- `ETextureRenderTargetFormat OverrideRenderTargetFormat [When enabled overrides the format of the render target, otherwise uses the project default setting.]`
- `FNiagaraUserParameterBinding RenderTargetUserParameter [When valid the user parameter is used as the render target rather than creating one internal, note that the input render target will be adjusted by the Niagara simulation]`
- `FIntVector Size []`
- `bool bInheritUserParameterSettings [When enabled texture parameters (size / etc) are taken from the user provided render target.
If no valid user parameter is set the system will be invalid.
Note: The resource will be recreated if UAV access is not available, which will reset the contents.]`
- `bool bOverrideFormat`
- `bool bPreviewRenderTarget`

---


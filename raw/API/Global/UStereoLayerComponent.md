### UStereoLayerComponent


A geometry layer within the stereo rendered viewport.

**属性**:

- `TArray<FName> AdditionalFlags [Additional flags not included in IStereoLayers::ELayerFlags]`
- `UTexture LeftTexture [Texture displayed on the stereo layer for left eye, if stereoscopic textures are supported on the platform and by the layer shape *]`
- `int Priority [Render priority among all stereo layers, higher priority render on top of lower priority *]`
- `FVector2D QuadSize [Size of the rendered stereo layer quad *]`
- `UStereoLayerShape Shape [Specifies which shape of layer it is.  Note that some shapes will be supported only on certain platforms! *]`
- `EStereoLayerType StereoLayerType [Specifies how and where the quad is rendered to the screen *]`
- `UTexture Texture [Texture displayed on the stereo layer (if stereoscopic textures are supported on the platform and more than one texture is provided, this will be the right eye) *]`
- `FBox2D UVRect [UV coordinates mapped to the quad face *]`
- `bool bLiveTexture [True if the stereo layer texture needs to update itself every frame(scene capture, video, etc.)]`
- `bool bNoAlphaChannel [True if the texture should not use its own alpha channel (1.0 will be substituted)]`
- `bool bQuadPreserveTextureRatio [True if the quad should internally set it's Y value based on the set texture's dimensions]`
- `bool bSupportsDepth [True if the stereo layer needs to support depth intersections with the scene geometry, if available on the platform]`


**方法**:

- `UTexture GetLeftTexture() const`  
  @return the texture mapped to the stereo layer for left eye, if stereoscopic layer textures are supported on the platform.
- `int GetPriority() const`  
  @return the render priority
- `FVector2D GetQuadSize() const`  
  @return the height and width of the rendered quad
- `UTexture GetTexture() const`  
  @return the texture mapped to the stereo layer.
- `FBox2D GetUVRect() const`  
  @return the UV coordinates mapped to the quad face
- `MarkTextureForUpdate()`  
  Manually mark the stereo layer texture for updating
- `SetLeftTexture(UTexture InTexture)`  
  Change the texture displayed on the stereo layer for left eye, if stereoscopic layer textures are supported on the platform.
@param       InTexture: new Texture2D
- `SetPriority(int InPriority)`  
  Change the layer's render priority, higher priorities render on top of lower priorities
@param       InPriority: Priority value
- `SetQuadSize(FVector2D InQuadSize)`  
  Change the quad size. This is the unscaled height and width, before component scale is applied.
@param       InQuadSize: new quad size.
- `SetTexture(UTexture InTexture)`  
  Change the texture displayed on the stereo layer.

If stereoscopic layer textures are supported on the platform and LeftTexture is set, this property controls the texture for the right eye.
@param       InTexture: new Texture2D
- `SetUVRect(FBox2D InUVRect)`  
  Change the UV coordinates mapped to the quad face
@param       InUVRect: Min and Max UV coordinates

---


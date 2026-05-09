### UBillboardComponent


A 2d texture that will be rendered always facing the camera.

**属性**:

- `float32 OpacityMaskRefVal [The billboard is not rendered where texture opacity < OpacityMaskRefVal]`
- `float32 ScreenSize`
- `UTexture2D Sprite`
- `float32 U`
- `float32 UL`
- `float32 V`
- `float32 VL`
- `bool bIsScreenSizeScaled`
- `bool bUseInEditorScaling [Whether to use in-editor arrow scaling (i.e. to be affected by the global arrow scale)]`


**方法**:

- `SetOpacityMaskRefVal(float32 RefVal)`  
  Changed the opacity masked used by this component
- `SetSprite(UTexture2D NewSprite)`  
  Change the sprite texture used by this component
- `SetSpriteAndUV(UTexture2D NewSprite, int NewU, int NewUL, int NewV, int NewVL)`  
  Change the sprite texture and the UV's used by this component
- `SetUV(int NewU, int NewUL, int NewV, int NewVL)`  
  Change the sprite's UVs

---


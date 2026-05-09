### USceneCaptureComponentCube


Used to capture a 'snapshot' of the scene from a 6 planes and feed it to a render target.

**属性**:

- `float32 PostProcessBlendWeight [Range (0.0, 1.0) where 0 indicates no effect, 1 indicates full effect.]`
- `FPostProcessSettings PostProcessSettings`
- `UTextureRenderTargetCube TextureTarget [Temporary render target that can be used by the editor.]`
- `bool bCaptureRotation [Preserve the rotation of the actor when updating the capture. The default behavior is to capture the cube aligned to the world axis system.]`


**方法**:

- `CaptureScene()`  
  Render the scene to the texture target immediately.
This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.
If r.SceneCapture.CullByDetailMode is set, nothing will happen if DetailMode is higher than r.DetailMode.

---


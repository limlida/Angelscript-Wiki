### USceneCaptureComponent2D


Used to capture a 'snapshot' of the scene from a single plane and feed it to a render target.

**属性**:

- `float32 AutoPlaneShift [Manually adjusts the planes of this camera, maintaining the distance between them. Positive moves out to the farplane, negative towards the near plane]`
- `FVector ClipPlaneBase [Base position for the clip plane, can be any position on the plane.]`
- `FVector ClipPlaneNormal [Normal for the plane.]`
- `ESceneCaptureCompositeMode CompositeMode [When enabled, the scene capture will composite into the render target instead of overwriting its contents.]`
- `float32 CustomNearClippingPlane [Set bOverride_CustomNearClippingPlane to true if you want to use a custom clipping plane instead of GNearClippingPlane.]`
- `FMatrix CustomProjectionMatrix [The custom projection matrix to use]`
- `float32 FOVAngle [Camera field of view (in degrees).]`
- `float32 FirstPersonFieldOfView [The horizontal field of view (in degrees) used for primitives tagged as FirstPerson.]`
- `float32 FirstPersonScale [The scale to apply to primitives tagged as FirstPerson. This is used to scale down primitives towards the camera such that they are small enough not to intersect with the scene.]`
- `FIntPoint MainViewResolutionDivisor [Divisor when rendering at Main View Resolution.]`
- `int NumXTiles [Number of X tiles to render. Ignored in Perspective mode, works only in Orthographic mode]`
- `int NumYTiles [Number of Y tiles to render. Ignored in Perspective mode, works only in Orthographic mode]`
- `float32 OrthoWidth [The desired width (in world units) of the orthographic view (ignored in Perspective mode)]`
- `float32 Overscan [Amount to increase the view frustum by, from 0.0 for no increase to 1.0 for 100% increase]`
- `float32 PostProcessBlendWeight [Range (0.0, 1.0) where 0 indicates no effect, 1 indicates full effect.]`
- `FPostProcessSettings PostProcessSettings`
- `ECameraProjectionMode ProjectionType`
- `UTextureRenderTarget2D TextureTarget [Output render target of the scene capture that can be read in materials.]`
- `ESceneCaptureUnlitViewmode UnlitViewmode [Option to enable a debug feature which outputs base color to the emissive channel when lighting is disabled via ShowFlag
or via Render In Main Renderer, which renders the capture as a Custom Render Pass.  Note that the debug feature requires
development shaders to be compiled, generally only true in non-shipping builds on PC!  To work in other cases, materials
should directly write to the emissive channel (or be unlit materials), rather than counting on the debug feature.]`
- `FName UserSceneTextureBaseColor [Expose BaseColor as a UserSceneTexture.  Requires "Render In Main Renderer".  Enables Main View Family and Resolution, disables "Ignore Screen Percentage".  Useful to get multiple outputs from a Custom Render Pass.]`
- `FName UserSceneTextureNormal [Expose Normal as a UserSceneTexture.  Requires "Render In Main Renderer".  Enables Main View Family and Resolution, disables "Ignore Screen Percentage".  Useful to get multiple outputs from a Custom Render Pass.]`
- `FName UserSceneTextureSceneColor [Expose SceneColor (emissive/unlit) as a UserSceneTexture.  Requires "Render In Main Renderer".  Enables Main View Family and Resolution, disables "Ignore Screen Percentage".  Useful to get multiple outputs from a Custom Render Pass.]`
- `bool bAutoCalculateOrthoPlanes [Automatically determine a min/max Near/Far clip plane position depending on OrthoWidth value]`
- `bool bCameraCutThisFrame [True if we did a camera cut this frame. Automatically reset to false at every capture.
This flag affects various things in the renderer (such as whether to use the occlusion queries from last frame, and motion blur).
Similar to UPlayerCameraManager::bGameCameraCutThisFrame.]`
- `bool bConsiderUnrenderedOpaquePixelAsFullyTranslucent [Whether to only render exponential height fog on opaque pixels which were rendered by the scene capture.]`
- `bool bEnableClipPlane [Enables a clip plane while rendering the scene capture which is useful for portals.
The global clip plane must be enabled in the renderer project settings for this to work.]`
- `bool bEnableFirstPersonFieldOfView [True if the first person field of view should be used for primitives tagged as FirstPerson.]`
- `bool bEnableFirstPersonScale [True if the first person scale should be used for primitives tagged as FirstPerson.]`
- `bool bEnableOrthographicTiling [Render the scene in n frames (i.e TileCount) - Ignored in Perspective mode, works only in Orthographic mode when CaptureSource uses SceneColor (not FinalColor)
If CaptureSource uses FinalColor, tiling will be ignored and a Warning message will be logged]`
- `bool bIgnoreScreenPercentage [When rendering with main view resolution, ignore screen percentage scale and render at full resolution.  Temporal AA jitter is also disabled.]`
- `bool bInheritMainViewCameraPostProcessSettings [Inherit the main view camera post-process settings and ignore local default values. Local active overrides will function as usual.]`
- `bool bMainViewCamera [Render with main view camera.  Enables Main View Family and Resolution.  Temporal AA jitter is matched with main view.]`
- `bool bMainViewFamily [Render with main view family, for example with the main editor or game viewport which mark their view families as "main".]`
- `bool bMainViewResolution [Render with main view resolution, ignoring the dimensions in the resource.  Enables Main View Family.]`
- `bool bOverride_CustomNearClippingPlane`
- `bool bRenderInMainRenderer [Render scene capture as additional render passes of the main renderer rather than as an independent renderer. Applies to scene depth, device depth, base color, normal, and scene color modes (disables lighting and shadows).]`
- `bool bUpdateOrthoPlanes [Adjusts the near/far planes and the view origin of the current camera automatically to avoid clipping and light artefacting]`
- `bool bUseCameraHeightAsViewTarget [If UpdateOrthoPlanes is enabled, this setting will use the cameras current height to compensate the distance to the general view (as a pseudo distance to view target when one isn't present)]`
- `bool bUseCustomProjectionMatrix [Whether a custom projection matrix will be used during rendering. Use with caution. Does not currently affect culling]`


**方法**:

- `CaptureScene()`  
  Render the scene to the texture target immediately.
This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.
If r.SceneCapture.CullByDetailMode is set, nothing will happen if DetailMode is higher than r.DetailMode.

---


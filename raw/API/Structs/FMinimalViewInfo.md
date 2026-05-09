### FMinimalViewInfo


**属性**:

- `float32 AspectRatio [Aspect Ratio (Width/Height)]`
- `FVector4f AsymmetricCropFraction [Experimental: The fraction for each edge between 0.0 and 1.0 of the view to crop to during the final post process upscale, with 1.0 meaning no crop.
By convention, X is the left edge, Y is the right edge, Z is the top edge, and W is the bottom edge. Stacks with uniform CropFraction.]`
- `float32 AutoPlaneShift [Manually adjusts the planes of this camera, maintaining the distance between them. Positive moves out to the farplane, negative towards the near plane]`
- `float32 CropFraction [The fraction between 0.0 and 1.0 of the view to crop to during the final post process upscale, with 1.0 meaning no crop]`
- `float32 FOV [The horizontal field of view (in degrees) in perspective mode (ignored in orthographic mode).]`
- `float32 FirstPersonFOV [The horizontal field of view (in degrees) used for primitives tagged as "IsFirstPerson".]`
- `float32 FirstPersonScale [The scale to apply to primitives tagged as "IsFirstPerson". This is used to scale down primitives towards the camera such that they are small enough not to intersect with the scene.]`
- `FVector Location [Location]`
- `FVector2D OffCenterProjectionOffset [Off-axis / off-center projection offset as proportion of screen dimensions]`
- `float32 OrthoFarClipPlane [The far plane distance of the orthographic view (in world units)]`
- `float32 OrthoNearClipPlane [The near plane distance of the orthographic view (in world units)]`
- `float32 OrthoWidth [The desired width (in world units) of the orthographic view (ignored in Perspective mode)]`
- `float32 OverscanResolutionFraction [Resolution fraction that scales with the amount of overscan added to the view]`
- `float32 PerspectiveNearClipPlane [The near plane distance of the perspective view (in world units). Set to a negative value to use the default global value of GNearClippingPlane]`
- `float32 PostProcessBlendWeight [Indicates if PostProcessSettings should be applied.]`
- `FPostProcessSettings PostProcessSettings [Post-process settings to use if PostProcessBlendWeight is non-zero.]`
- `ECameraProjectionMode ProjectionMode [The type of camera]`
- `FRotator Rotation [Rotation]`
- `bool bAutoCalculateOrthoPlanes [Option for the Ortho camera to automatically calculated the near/far plane]`
- `bool bConstrainAspectRatio [If bConstrainAspectRatio is true, black bars will be added if the destination view has a different aspect ratio than this camera requested.]`
- `bool bUpdateOrthoPlanes [Adjusts the near/far planes and the view origin of the current camera automatically to avoid clipping and light artefacting]`
- `bool bUseCameraHeightAsViewTarget [If UpdateOrthoPlanes is enabled, this setting will use the cameras current height to compensate the distance to the general view (as a pseudo distance to view target when one isn't present)]`
- `bool bUseFieldOfViewForLOD [If true, account for the field of view angle when computing which level of detail to use for meshes.]`
- `bool bUseFirstPersonParameters [If bUseFirstPersonParameters is true, FirstPersonFOV and FirstPersonScale should be applied to primitives tagged as "IsFirstPerson".]`


**方法**:

- `FMatrix CalculateProjectionMatrix() const`  
  Calculates the projection matrix using this view info's aspect ratio (regardless of bConstrainAspectRatio)
- `FMinimalViewInfo& opAssign(FMinimalViewInfo Other)`

---


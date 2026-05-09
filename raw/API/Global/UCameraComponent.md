### UCameraComponent


Represents a camera viewpoint and settings, such as projection type, field of view, and post-process overrides.
The default behavior for an actor used as the camera view target is to look for an attached camera component and use its location, rotation, and settings.

**属性**:

- `float32 AspectRatio [Aspect Ratio (Width/Height)]`
- `EAspectRatioAxisConstraint AspectRatioAxisConstraint [Override for the default aspect ratio axis constraint defined on the local player]`
- `float32 AutoPlaneShift [Manually adjusts the planes of this camera, maintaining the distance between them. Positive moves out to the farplane, negative towards the near plane]`
- `UStaticMesh CameraMesh`
- `float32 FieldOfView [The horizontal field of view (in degrees) in perspective mode (ignored in Orthographic mode)

If the aspect ratio axis constraint (from ULocalPlayer, ALevelSequenceActor, etc.) is set to maintain vertical FOV, the AspectRatio
property will be used to convert this property's value to a vertical FOV.]`
- `float32 FirstPersonFieldOfView [The horizontal field of view (in degrees) used for primitives tagged as "IsFirstPerson".]`
- `float32 FirstPersonScale [The scale to apply to primitives tagged as "IsFirstPerson". This is used to scale down primitives towards the camera such that they are small enough not to intersect with the scene.]`
- `float32 OrthoFarClipPlane [The far plane distance of the orthographic view (in world units)]`
- `float32 OrthoNearClipPlane [The near plane distance of the orthographic view (in world units)]`
- `float32 OrthoWidth [The desired width (in world units) of the orthographic view (ignored in Perspective mode)]`
- `float32 Overscan [Amount to increase the view frustum by, from 0.0 for no increase to 1.0 for 100% increase]`
- `float32 PostProcessBlendWeight [Indicates if PostProcessSettings should be used when using this Camera to view through.]`
- `FPostProcessSettings PostProcessSettings [Post process settings to use for this camera. Don't forget to check the properties you want to override]`
- `ECameraProjectionMode ProjectionMode [The type of camera]`
- `bool bAutoCalculateOrthoPlanes [Automatically determine a min/max Near/Far clip plane position depending on OrthoWidth value]`
- `bool bCameraMeshHiddenInGame [If the camera mesh is visible in game. Only relevant when running editor builds.]`
- `bool bConstrainAspectRatio [If bConstrainAspectRatio is true, black bars will be added if the destination view has a different aspect ratio than this camera requested.]`
- `bool bCropOverscan [Indicates that the overscanned pixels should be cropped at the end of the rendering pipeline, allowing the overscanned pixels to be used in post process effects
that need extra pixels beyond the view frustum (e.g. lens distortion) without having to render those pixels to the screen. When bScaleResolutionWithOverscan is enabled,
the cropped image will have the same resolution as the original non-overscanned image, but when disabled, the cropped image will be a lower resolution.]`
- `bool bDrawFrustumAllowed [The Frustum visibility flag for draw frustum component initialization]`
- `bool bEnableFirstPersonFieldOfView [True if the first person field of view should be used for primitives tagged as "IsFirstPerson".]`
- `bool bEnableFirstPersonScale [True if the first person scale should be used for primitives tagged as "IsFirstPerson".]`
- `bool bLockToHmd [True if the camera's orientation and position should be locked to the HMD]`
- `bool bOverrideAspectRatioAxisConstraint [Whether to override the default aspect ratio axis constraint defined on the local player]`
- `bool bScaleResolutionWithOverscan [Indicates that the resolution should be scaled by the overscan amount so that the original view frustum remains the same resolution.
Note that when enabled, increasing overscan will result in increased rendering workload, potentially decreasing performance as resolution increases]`
- `bool bUpdateOrthoPlanes [Adjusts the near/far planes and the view origin of the current camera automatically to avoid clipping and light artefacting]`
- `bool bUseCameraHeightAsViewTarget [If UpdateOrthoPlanes is enabled, this setting will use the cameras current height to compensate the distance to the general view (as a pseudo distance to view target when one isn't present)]`
- `bool bUseFieldOfViewForLOD [If true, account for the field of view angle when computing which level of detail to use for meshes.]`
- `bool bUsePawnControlRotation [If this camera component is placed on a pawn, should it use the view/control rotation of the pawn where possible?
@see APawn::GetViewRotation()]`


**方法**:

- `GetCameraView(float32 DeltaTime, FMinimalViewInfo& DesiredView)`  
  Returns camera's Point of View.
Called by Camera class. Subclass and postprocess to add any effects.
- `OnCameraMeshHiddenChanged()`  
  Internal function for updating the camera mesh visibility in PIE
- `SetAspectRatio(float32 InAspectRatio)`
- `SetAspectRatioAxisConstraint(EAspectRatioAxisConstraint InAspectRatioAxisConstraint)`
- `SetAutoCalculateOrthoPlanes(bool bAutoCalculate)`
- `SetAutoPlaneShift(float32 InAutoPlaneShift)`
- `SetConstraintAspectRatio(bool bInConstrainAspectRatio)`
- `SetCropOverscan(bool bInCropOverscan)`  
  Sets whether to crop the overscanned pixels at the end of the rendering pipeline, allowing the overscanned pixels to be used in post process effects
that need extra pixels beyond the view frustum (e.g. lens distortion) without having to render those pixels to the screen. When bScaleResolutionWithOverscan is enabled,
the cropped image will have the same resolution as the original non-overscanned image, but when disabled, the cropped image will be a lower resolution.
- `SetEnableFirstPersonFieldOfView(bool bInEnableFirstPersonFieldOfView)`
- `SetEnableFirstPersonScale(bool bInEnableFirstPersonScale)`
- `SetFieldOfView(float32 InFieldOfView)`
- `SetFirstPersonFieldOfView(float32 InFirstPersonFieldOfView)`
- `SetFirstPersonScale(float32 InFirstPersonScale)`
- `SetOrthoFarClipPlane(float32 InOrthoFarClipPlane)`
- `SetOrthoNearClipPlane(float32 InOrthoNearClipPlane)`
- `SetOrthoWidth(float32 InOrthoWidth)`
- `SetOverscan(float32 InOverscan)`
- `SetPostProcessBlendWeight(float32 InPostProcessBlendWeight)`
- `SetProjectionMode(ECameraProjectionMode InProjectionMode)`
- `SetScaleResolutionWithOverscan(bool bInScaleResolutionWithOverscan)`  
  Sets whether to scale the resolution by the amount of overscan so that the original view frustum remains the same resolution.
Note that when enabled, increasing overscan will result in increased rendering workload, potentially decreasing performance as resolution increases
- `SetUpdateOrthoPlanes(bool bInUpdateOrthoPlanes)`
- `SetUseCameraHeightAsViewTarget(bool bInUseCameraHeightAsViewTarget)`
- `SetUseFieldOfViewForLOD(bool bInUseFieldOfViewForLOD)`

---


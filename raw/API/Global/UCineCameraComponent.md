### UCineCameraComponent


A specialized version of a camera component, geared toward cinematic usage.

**属性**:

- `FPlateCropSettings CropSettings [Controls the crop settings.]`
- `float32 CurrentAperture [Current aperture, in terms of f-stop (e.g. 2.8 for f/2.8)]`
- `float32 CurrentFocalLength [Current focal length of the camera (i.e. controls FoV, zoom)]`
- `float32 CurrentFocusDistance [Read-only. Control this value via FocusSettings.]`
- `float32 CustomNearClippingPlane [Set bOverride_CustomNearClippingPlane to true if you want to use a custom clipping plane instead of GNearClippingPlane.]`
- `ECameraExposureMethod ExposureMethod [Exposure method, for determining whether exposure-related post-process settings should be automatically set from camera parameters]`
- `FCameraFilmbackSettings Filmback [Controls the filmback of the camera.]`
- `FCameraFocusSettings FocusSettings [Controls the camera's focus.]`
- `FCameraLensSettings LensSettings [Controls the camera's lens.]`
- `bool bOverride_CustomNearClippingPlane`


**方法**:

- `FString GetCropPresetName() const`  
  Returns the lens name of the camera with the current settings.
- `FString GetDefaultFilmbackPresetName() const`
- `FString GetFilmbackPresetName() const`  
  Returns the filmback name of the camera with the current settings.
- `float32 GetHorizontalFieldOfView() const`  
  Returns the horizonal FOV of the camera with current settings.
- `float32 GetHorizontalProjectionOffset() const`
- `FString GetLensPresetName() const`  
  Returns the lens name of the camera with the current settings.
- `float32 GetVerticalFieldOfView() const`  
  Returns the vertical FOV of the camera with current settings.
- `float32 GetVerticalProjectionOffset() const`
- `SetCropPresetByName(FString InPresetName)`  
  Set the current lens settings by preset name.
- `SetCropSettings(FPlateCropSettings NewCropSettings)`
- `SetCurrentAperture(float32 NewCurrentAperture)`
- `SetCurrentFocalLength(float32 InFocalLength)`
- `SetCustomNearClippingPlane(float32 NewCustomNearClippingPlane)`  
  Sets near clipping plane of the cine camera.
- `SetFilmback(FCameraFilmbackSettings NewFilmback)`
- `SetFilmbackPresetByName(FString InPresetName)`  
  Set the current preset settings by preset name.
- `SetFocusSettings(FCameraFocusSettings NewFocusSettings)`
- `SetLensPresetByName(FString InPresetName)`  
  Set the current lens settings by preset name.
- `SetLensSettings(FCameraLensSettings NewLensSettings)`

---


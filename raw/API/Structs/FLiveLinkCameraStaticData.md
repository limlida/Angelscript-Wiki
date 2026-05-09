### FLiveLinkCameraStaticData


Static data for Camera data.

**属性**:

- `float32 FilmBackHeight [Used with CinematicCamera. Values greater than 0 will be applied]`
- `float32 FilmBackWidth [Used with CinematicCamera. Values greater than 0 will be applied]`
- `TArray<FName> PropertyNames [Names for each curve values that will be sent for each frame]`
- `bool bIsApertureSupported [Whether Aperture in frame data can be used]`
- `bool bIsAspectRatioSupported [Whether AspectRatio in frame data can be used]`
- `bool bIsDepthOfFieldSupported [Set to false to force the camera to disable depth of field]`
- `bool bIsDynamicFilmbackSupported [Specifies if the live link subject will send dynamic changes to the film back.]`
- `bool bIsFieldOfViewSupported [Whether FieldOfView in frame data can be used]`
- `bool bIsFocalLengthSupported [Whether FocalLength in frame data can be used]`
- `bool bIsFocusDistanceSupported [Whether FocusDistance in frame data can be used]`
- `bool bIsLocationSupported [Whether location in frame data should be used]`
- `bool bIsProjectionModeSupported [Whether ProjectionMode in frame data can be used]`
- `bool bIsRotationSupported [Whether rotation in frame data should be used]`
- `bool bIsScaleSupported [Whether scale in frame data should be used]`


**方法**:

- `FLiveLinkCameraStaticData& opAssign(FLiveLinkCameraStaticData Other)`

---


### FLiveLinkCameraFrameData


Dynamic data for camera

**属性**:

- `float32 Aperture [Aperture of the camera in terms of f-stop]`
- `float32 AspectRatio [Aspect Ratio of the camera (Width / Heigth)]`
- `float32 FieldOfView [Field of View of the camera in degrees]`
- `float32 FilmBackHeight [Used with CinematicCamera. Values greater than 0 will be applied if bIsDynamicFilmbackSupported is true on static data.]`
- `float32 FilmBackWidth [Used with CinematicCamera. Values greater than 0 will be applied if bIsDynamicFilmbackSupported is true on static data.]`
- `float32 FocalLength [Focal length of the camera]`
- `float32 FocusDistance [Focus distance of the camera in cm. Works only in manual focus method]`
- `FLiveLinkMetaData MetaData [Frame's metadata.]`
- `ELiveLinkCameraProjectionMode ProjectionMode [ProjectionMode of the camera (Perspective, Orthographic, etc...)]`
- `TArray<float32> PropertyValues [Values of the properties defined in the static structure. Use FLiveLinkBaseStaticData.FindPropertyValue to evaluate.]`
- `FTransform Transform [Transform of the frame]`


**方法**:

- `FLiveLinkCameraFrameData& opAssign(FLiveLinkCameraFrameData Other)`

---


### FBlueprintCameraPose


Represents a camera pose.

**属性**:

- `float32 Aperture [The aperture (f-stop) of the camera's lens.]`
- `EAspectRatioAxisConstraint AspectRatioAxisConstraint [The aspect ratio axis constraint to use if aspect ratio is constrained.]`
- `bool ConstrainAspectRatio [Whether the camera should constrain aspect ratio.]`
- `int DiaphragmBladeCount [Number of blades in the lens diaphragm]`
- `bool EnablePhysicalCamera [Whether to setup post-process settings based on physical camera properties such as Aperture,
FocusDistance, DiaphragmBladeCount, and so on.]`
- `float32 FarClippingPlane [The camera's far clipping plane.]`
- `float32 FieldOfView [The field of view of the camera. May be negative if driven by focal length.]`
- `float32 FocalLength [The focal length of the camera. May be negative if driven directly by field of view.]`
- `float32 FocusDistance [The focus distance of the camera, if different from target distance.]`
- `float32 ISO [The camera sensor sensitivity in ISO.]`
- `FVector Location [The location of the camera.]`
- `float32 NearClippingPlane [The camera's near clipping plane.]`
- `float32 OrthographicWidth [The desired width (in world units) of the orthographic view (ignored in Perspective mode)]`
- `float32 Overscan [Sensor overscan in percentage]`
- `ECameraProjectionMode ProjectionMode [Projection mode - Perspective or orthographic]`
- `FRotator Rotation [The rotation of the camera.]`
- `float32 SensorHeight [The height of the camera's sensor.]`
- `float32 SensorHorizontalOffset [Horizontal offset of the sensor, in mm.]`
- `float32 SensorVerticalOffset [Vertical offset of the sensor, in mm.]`
- `float32 SensorWidth [The width of the camera's sensor.]`
- `float32 ShutterSpeed [The shutter speed of the camera's lens, in 1/seconds]`
- `float32 SqueezeFactor [The squeeze factor of the camera's lens.]`
- `float TargetDistance [The distance of the target of the camera.]`


**方法**:

- `FBlueprintCameraPose& opAssign(FBlueprintCameraPose Other)`

---


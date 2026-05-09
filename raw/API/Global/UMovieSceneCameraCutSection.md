### UMovieSceneCameraCutSection


Movie CameraCuts are sections on the CameraCuts track, that show what the viewer "sees"

**属性**:

- `FMovieSceneObjectBindingID CameraBindingID [The camera binding that this movie CameraCut uses]`
- `bool bLockPreviousCamera [When blending, lock the previous camera (camera cut or gameplay camera).]`


**方法**:

- `FMovieSceneObjectBindingID GetCameraBindingID() const`  
  Gets the camera binding for this CameraCut section
- `SetCameraBindingID(FMovieSceneObjectBindingID InCameraBindingID)`  
  Sets the camera binding for this CameraCut section

---


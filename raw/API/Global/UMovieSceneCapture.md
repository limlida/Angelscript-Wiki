### UMovieSceneCapture


Class responsible for capturing scene data

**属性**:

- `FString AdditionalCommandLineArguments [Additional command line arguments to pass to the external process when capturing]`
- `UMovieSceneAudioCaptureProtocolBase AudioCaptureProtocol []`
- `FSoftClassPath AudioCaptureProtocolType [The type of capture protocol to use for audio data.]`
- `UMovieSceneImageCaptureProtocolBase ImageCaptureProtocol [Capture protocol responsible for actually capturing frame data]`
- `FSoftClassPath ImageCaptureProtocolType [The type of capture protocol to use for image data]`
- `FString InheritedCommandLineArguments [Command line arguments inherited from this process]`
- `FMovieSceneCaptureSettings Settings [Settings that define how to capture]`
- `bool bCloseEditorWhenCaptureStarts [When enabled, the editor will shutdown when the capture starts]`
- `bool bUseSeparateProcess [Whether to capture the movie in a separate process or not]`


**方法**:

- `UMovieSceneCaptureProtocolBase GetAudioCaptureProtocol()`
- `UMovieSceneCaptureProtocolBase GetImageCaptureProtocol()`  
  Access the capture protocol we are using
- `SetAudioCaptureProtocolType(TSubclassOf<UMovieSceneCaptureProtocolBase> ProtocolType)`
- `SetImageCaptureProtocolType(TSubclassOf<UMovieSceneCaptureProtocolBase> ProtocolType)`

---


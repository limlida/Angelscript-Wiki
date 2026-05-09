### UAudioCapture


Class which opens up a handle to an audio capture device.
Allows other objects to get audio buffers from the capture device.

**方法**:

- `bool GetAudioCaptureDeviceInfo(FAudioCaptureDeviceInfo& OutInfo)`  
  Returns the audio capture device info
- `bool IsCapturingAudio()`  
  Returns true if capturing audio
- `StartCapturingAudio()`  
  Starts capturing audio
- `StopCapturingAudio()`  
  Stops capturing audio

---


### FAudioInputDeviceInfo


Platform audio input device info, in a Blueprint-readable format

**属性**:

- `FString DeviceId [ID of the device.]`
- `FString DeviceName [The name of the audio device]`
- `int InputChannels [The number of channels supported by the audio device]`
- `int PreferredSampleRate [The preferred sample rate of the audio device]`
- `bool bSupportsHardwareAEC [Whether or not the device supports Acoustic Echo Canceling]`


**方法**:

- `FAudioInputDeviceInfo& opAssign(FAudioInputDeviceInfo Other)`

---


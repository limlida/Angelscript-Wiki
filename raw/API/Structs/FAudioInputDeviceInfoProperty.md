### FAudioInputDeviceInfoProperty


Encapsulates audio device properties which are utilized by UI facing classes such as FAudioInputDeviceProperty.

**属性**:

- `FString DeviceId [The unique id used to identify the device]`
- `FString DeviceName [User friendly name of the audio device]`
- `int InputChannels [The number input channels this device supports]`
- `int PreferredSampleRate [The preferred sample rate for this audio device]`
- `bool bIsDefaultDevice [Boolean indicating if this device is the currently the system selected input device]`


**方法**:

- `FAudioInputDeviceInfoProperty& opAssign(FAudioInputDeviceInfoProperty Other)`

---


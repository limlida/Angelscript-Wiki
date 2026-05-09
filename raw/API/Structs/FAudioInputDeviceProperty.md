### FAudioInputDeviceProperty


Encapsulates the array of audio input devices which is populated by UTakeRecorderMicrophoneAudioManager and
utilized by the audio input device list in FAudioInputDevicePropertyCustomization.

**属性**:

- `int AudioInputBufferSize [The desired buffer size used for audio callbacks during record]`
- `FString DeviceId [The unique id of the currently selected audio device]`
- `TArray<FAudioInputDeviceInfoProperty> DeviceInfoArray [Holds device information for each of the audio devices available on this system.]`
- `bool bUseSystemDefaultAudioDevice [Boolean indicating if the system selects audio device should be used or to use the selected device from the details panel]`


**方法**:

- `FAudioInputDeviceProperty& opAssign(FAudioInputDeviceProperty Other)`

---


### FAudioOutputDeviceInfo


Platform audio output device info, in a Blueprint-readable format

**属性**:

- `FString DeviceId [ID of the device.]`
- `EAudioMixerStreamDataFormatType Format [The data format of the audio stream]`
- `FString Name [The name of the audio device]`
- `int NumChannels [The number of channels supported by the audio device]`
- `TArray<EAudioMixerChannelType> OutputChannelArray [The output channel array of the audio device]`
- `int SampleRate [The sample rate of the audio device]`
- `bool bIsCurrentDevice [Whether or not this device is the device currently in use]`
- `bool bIsSystemDefault [Whether or not this device is the system default]`


**方法**:

- `FAudioOutputDeviceInfo& opAssign(FAudioOutputDeviceInfo Other)`

---


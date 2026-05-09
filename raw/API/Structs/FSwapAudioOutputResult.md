### FSwapAudioOutputResult


Out structure for use with AudioMixerBlueprintLibrary::SwapAudioOutputDevice

**属性**:

- `FString CurrentDeviceId [ID of the currently set device.  This is the device at the time of the call, NOT the resulting deviceId]`
- `FString RequestedDeviceId [ID of the requested device.]`
- `ESwapAudioOutputDeviceResultState Result [Result of the call]`


**方法**:

- `FSwapAudioOutputResult& opAssign(FSwapAudioOutputResult Other)`

---


### UForceFeedbackEffect


A predefined force-feedback effect to be played on a controller

**属性**:

- `TArray<FForceFeedbackChannelDetails> ChannelDetails []`
- `TArray<TObjectPtr<UInputDeviceProperty>> DeviceProperties [A map of input device properties that we want to set while this effect is playing]`
- `float32 Duration [Duration of force feedback pattern in seconds.]`
- `TMap<FName,FForceFeedbackEffectOverridenChannelDetails> PerDeviceOverrides [A map of platform name -> ForceFeedback channel details]`

---


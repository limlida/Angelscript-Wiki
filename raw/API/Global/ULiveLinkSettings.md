### ULiveLinkSettings


Settings for LiveLink.

**属性**:

- `float32 ClockOffsetCorrectionStep [Continuous clock offset correction step]`
- `TSoftObjectPtr<ULiveLinkPreset> DefaultLiveLinkPreset [The default preset that should be applied]`
- `ELiveLinkSourceMode DefaultMessageBusSourceMode [The default evaluation mode a source connected via the message bus should start with.]`
- `TArray<FLiveLinkRoleProjectSetting> DefaultRoleSettings []`
- `FLinearColor InvalidColor []`
- `float MessageBusHeartbeatFrequency [The refresh frequency of the heartbeat when a provider didn't send us an updated.]`
- `float MessageBusHeartbeatTimeout [How long we should wait before a provider become unresponsive.]`
- `float MessageBusPingRequestFrequency [The refresh frequency of the list of message bus provider (when discovery is requested).]`
- `float MessageBusTimeBeforeRemovingInactiveSource [Subjects will be removed when their source has been unresponsive for this long.]`
- `uint8 TextSizeSource [Font size of Source names shown in LiveLink Debug View.]`
- `uint8 TextSizeSubject [Font size of Subject names shown in LiveLink Debug View.]`
- `float TimeWithoutFrameToBeConsiderAsInvalid [A source may still exist but does not send frames for a subject.
Time before considering the subject as "invalid".
The subject still exists and can still be evaluated.
An invalid subject is shown as yellow in the LiveLink UI.]`
- `FLinearColor ValidColor []`

---


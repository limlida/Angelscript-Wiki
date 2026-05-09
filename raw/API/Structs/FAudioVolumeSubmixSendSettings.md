### FAudioVolumeSubmixSendSettings


Struct to determine dynamic submix send data for use with audio volumes.

**属性**:

- `EAudioVolumeLocationState ListenerLocationState [The state the listener needs to be in, relative to the audio volume, for this submix send list to be used for a given sound]`
- `TArray<FSoundSubmixSendInfo> SubmixSends [Submix send array for sounds that are in the ListenerLocationState at the same time as the listener]`


**方法**:

- `FAudioVolumeSubmixSendSettings& opAssign(FAudioVolumeSubmixSendSettings Other)`

---


### UMetaSoundSourceBuilder


Builder in charge of building a MetaSound Source

**方法**:

- `Audition(UAudioComponent AudioComponent, FOnCreateAuditionGeneratorHandleDelegate OnCreateGenerator = FOnCreateAuditionGeneratorHandleDelegate ( ), bool bLiveUpdatesEnabled = false)`
- `bool GetLiveUpdatesEnabled() const`  
  Returns whether or not live updates are both globally enabled (via cvar) and are enabled on this builder's last built sound, which may or may not still be playing.
- `SetBlockRateOverride(float32 BlockRate)`  
  Sets the MetaSound's BlockRate override
- `SetFormat(EMetaSoundOutputAudioFormat OutputFormat, EMetaSoundBuilderResult& OutResult)`  
  Sets the output audio format of the source
- `SetQuality(FName Quality)`  
  Sets the MetaSound's Quality level
- `SetSampleRateOverride(int SampleRate)`  
  Sets the MetaSound's SampleRate override

---


### UNiagaraDataChannel


**属性**:

- `TArray<FNiagaraDataChannelVariable> ChannelVariables [The variables that define the data contained in this Data Channel.]`
- `ETickingGroup FinalWriteTickGroup [The final tick group that this data channel can be written to.]`
- `bool bEnforceTickGroupReadWriteOrder [If true we ensure that all writes happen in or before the Tick Group specified in EndWriteTickGroup and that all reads happen in tick groups after this.]`
- `bool bKeepPreviousFrameData [If true, we keep our previous frame's data. This comes at a memory and performance cost but allows users to avoid tick order dependency by reading last frame's data. Some users will prefer a frame of latency to tick order dependency.]`

---


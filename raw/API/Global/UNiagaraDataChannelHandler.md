### UNiagaraDataChannelHandler


**方法**:

- `UNiagaraDataChannelReader GetDataChannelReader()`
- `UNiagaraDataChannelWriter GetDataChannelWriter()`
- `SubscribeToDataChannelUpdates(FOnNewNiagaraDataChannelPublish UpdateDelegate, FNiagaraDataChannelSearchParameters SearchParams, int& UnsubscribeToken)`  
  The provided delegate will be called whenever new entries are added to the relevant data channel. This means the delegate can be called multiple times per tick.
This is only relevant for data published to the game thread, so no gpu data or data that's only visible to niagara systems.
- `SubscribeToDataChannelUpdates_WithContext(FOnNewNiagaraDataChannelPublish UpdateDelegate, FNDCAccessContextInst& AccessContext, int& UnsubscribeToken)`  
  The provided delegate will be called whenever new entries are added to the relevant data channel. This means the delegate can be called multiple times per tick.
This is only relevant for data published to the game thread, so no gpu data or data that's only visible to niagara systems.
- `UnsubscribeFromDataChannelUpdates(int UnsubscribeToken)`

---


### UAnimNotify_PlayNiagaraEffect


**属性**:

- `bool Attached [Should attach to the bone/socket]`
- `FVector LocationOffset [Location offset from the socket]`
- `FRotator RotationOffset [Rotation offset from socket]`
- `FVector Scale [Scale to spawn the Niagara system at]`
- `FName SocketName [SocketName to attach to]`
- `UNiagaraSystem Template [Niagara System to Spawn]`
- `bool bAbsoluteScale [Whether or not we are in absolute scale mode]`


**方法**:

- `UFXSystemComponent GetSpawnedEffect() const`  
  Return FXSystemComponent created from SpawnEffect

---


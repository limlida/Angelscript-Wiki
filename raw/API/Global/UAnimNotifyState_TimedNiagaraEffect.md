### UAnimNotifyState_TimedNiagaraEffect


Timed Niagara Effect Notify
Allows a looping Niagara effect to be played in an animation that will activate
at the beginning of the notify and deactivate at the end.

**属性**:

- `FVector LocationOffset [Offset from the socket or bone to place the Niagara system]`
- `FRotator RotationOffset [Rotation offset from the socket or bone for the Niagara system]`
- `FVector Scale [Scale to spawn the Niagara system at]`
- `FName SocketName [The socket or bone to attach the system to]`
- `UNiagaraSystem Template [The niagara system to spawn for the notify state]`
- `bool bApplyRateScaleAsTimeDilation [Should we set the animation rate scale as time dilation on the spawn effect?]`
- `bool bDestroyAtEnd [Whether the Niagara system should be immediately destroyed at the end of the notify state or be allowed to finish]`


**方法**:

- `UFXSystemComponent GetSpawnedEffect(UMeshComponent MeshComp) const`  
  Return FXSystemComponent created from SpawnEffect

---


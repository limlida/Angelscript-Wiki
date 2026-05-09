### UAnimNotifyState_TimedParticleEffect


Timed Particle Effect Notify
Allows a looping particle effect to be played in an animation that will activate
at the beginning of the notify and deactivate at the end.

**属性**:

- `FVector LocationOffset [Offset from the socket or bone to place the particle system]`
- `UParticleSystem PSTemplate [The particle system to spawn for the notify state]`
- `FRotator RotationOffset [Rotation offset from the socket or bone for the particle system]`
- `FName SocketName [The socket or bone to attach the system to]`
- `bool bDestroyAtEnd [Whether the particle system should be immediately destroyed at the end of the notify state or be allowed to finish]`

---


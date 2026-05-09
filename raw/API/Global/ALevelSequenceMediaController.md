### ALevelSequenceMediaController


Replicated actor class that is responsible for instigating various cinematic assets (Media, Audio, Level Sequences) in a synchronized fasion

**属性**:

- `UMediaComponent MediaComponent [Media component that contains the media player to synchronize with]`
- `ALevelSequenceActor Sequence [Pointer to the sequence actor to use for playback]`
- `float32 ServerStartTimeSeconds [Replicated time at which the server started the sequence (taken from AGameStateBase::GetServerWorldTimeSeconds)]`


**方法**:

- `UMediaComponent GetMediaComponent() const`  
  Access this actor's media component
- `ALevelSequenceActor GetSequence() const`  
  Access this actor's Level Sequence Actor
- `Play()`
- `SynchronizeToServer(float32 DesyncThresholdSeconds = 2.000000)`  
  Forcibly synchronize the sequence to the server's position if it has diverged by more than the specified threshold

---


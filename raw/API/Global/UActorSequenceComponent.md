### UActorSequenceComponent


Movie scene animation embedded within an actor.

**属性**:

- `FMovieSceneSequencePlaybackSettings PlaybackSettings []`
- `UActorSequence Sequence [Embedded actor sequence data]`
- `UActorSequencePlayer SequencePlayer []`


**方法**:

- `PauseSequence()`  
  Calls the Pause function on the SequencePlayer if its valid.
- `PlaySequence()`  
  Calls the Play function on the SequencePlayer if its valid.
- `PlaySequenceReverse()`  
  Calls the PlayReverse function on the SequencePlayer if its valid.
- `StopSequence()`  
  Calls the Stop function on the SequencePlayer if its valid.

---


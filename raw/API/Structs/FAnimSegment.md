### FAnimSegment


this is anim segment that defines what animation and how *

**属性**:

- `float32 AnimEndTime [Time to end playing the AnimSequence at.]`
- `float32 AnimPlayRate [Playback speed of this animation. If you'd like to reverse, set -1]`
- `UAnimSequenceBase AnimReference [Anim Reference to play - only allow AnimSequence or AnimComposite *]`
- `float32 AnimStartTime [Time to start playing AnimSequence at.]`
- `float32 CachedPlayLength []`
- `int LoopingCount []`


**方法**:

- `FAnimSegment& opAssign(FAnimSegment Other)`

---


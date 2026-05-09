### FFrameTime


Represents a time by a context-free frame number, plus a sub frame value in the range [0:1).
@note The full C++ class is located here: Engine\Source\Runtime\Core\Public\Misc\FrameTime.h
@note The 'SubFrame' field is private to match its C++ class declaration in the header above.

**属性**:

- `FFrameNumber FrameNumber [Count of frames from start of timing]`
- `float32 SubFrame [Time within a frame, always between >= 0 and < 1]`


**方法**:

- `FFrameTime& opAssign(FFrameTime Other)`

---


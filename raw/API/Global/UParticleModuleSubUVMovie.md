### UParticleModuleSubUVMovie


**属性**:

- `FRawDistributionFloat FrameRate [The frame rate the SubUV images should be 'flipped' thru at.]`
- `int StartingFrame [The starting image index for the SubUV (1 = the first frame).
Assumes order of Left->Right, Top->Bottom
If greater than the last frame, it will clamp to the last one.
If 0, then randomly selects a starting frame.]`
- `bool bUseEmitterTime [If true, use the emitter time to look up the frame rate.
If false (default), use the particle relative time.]`

---


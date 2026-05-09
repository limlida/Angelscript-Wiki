### UZeroOutRootBoneModifier


Adjust root motion to be relative to the first frame. Optionally cut the start and end sections of the animation that don't have motion on the root.
      This was written to be used when capturing Character Movement motion via Take Recorder. Take Recorder outputs an animation captured from
      a character moving in game in world space, and this modifier zeroes out the root. The animation can then be exported to fbx to be animated against.

**属性**:

- `bool bClipEndFramesWithNoMotion [Clip frames at the end of the animation that have no root motion.]`
- `bool bClipStartFramesWithNoMotion [Clip frames at the start of the animation that have no root motion.]`

---


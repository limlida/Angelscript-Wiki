### ULiveLinkTransformDeadbandPreProcessor


Implements a deadband filter that gets applied to the transform, with independent thresholds
for rotation and translation.

**属性**:

- `float32 RotationDeadbandInDegrees [Rotation is updated only if the change is larger than this threshold]`
- `float32 TranslationDeadband [Translation is updated only if the change is larger than this threshold]`
- `bool bEnableDeadband [If false, transform is left untouched]`

---


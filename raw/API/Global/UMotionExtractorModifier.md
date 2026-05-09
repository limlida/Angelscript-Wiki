### UMotionExtractorModifier


Extracts motion from a bone in the animation and bakes it into a curve

**属性**:

- `EMotionExtractor_Axis Axis [Axis to get the value from]`
- `FName BoneName [Bone we are going to generate the curve from]`
- `FName CustomCurveName [Custom name for the curve we are going to generate.]`
- `EMotionExtractor_MathOperation MathOperation [Optional math operation to apply on the extracted value before add it to the generated curve]`
- `float32 Modifier [Right operand for the math operation selected]`
- `EMotionExtractor_MotionType MotionType [Type of motion to extract]`
- `FName RelativeToBoneName [Bone which we'll use as the reference frame to generate this curve from. Space must be RelativeToBone to use this.]`
- `int SampleRate [Rate used to sample the animation]`
- `EMotionExtractor_Space Space [Reference frame/space to use when extracting the bone pose.]`
- `bool bAbsoluteValue [Whether to convert the final value to absolute (positive)]`
- `bool bNormalize [Whether we want a normalized value (0 - 1)]`
- `bool bRelativeToFirstFrame [Whether to extract the bone transforms relative to the first frame in the animation]`
- `bool bRemoveCurveOnRevert [Whether we want to remove the curve when we revert or re-apply modifier
              Disabling this allows you to modify settings and create a new curve each time you re-apply the modifier
              Enabling this is the preferred setting when using a modifier that's applied in bulk and you may want to remove/rename curves]`
- `bool bUseCustomCurveName [Whether we want to specify a custom name for the curve. If false, the name of the curve will be auto generated based on the data we are going to extract]`

---


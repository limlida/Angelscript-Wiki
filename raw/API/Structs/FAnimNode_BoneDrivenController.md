### FAnimNode_BoneDrivenController


This is the runtime version of a bone driven controller, which maps part of the state from one bone to another (e.g., 2 * source.x -> target.z)

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `EDrivenDestinationMode DestinationMode [Type of destination to drive, currently either bone or morph target]`
- `UCurveFloat DrivingCurve [Curve used to map from the source attribute to the driven attributes if present (otherwise the Multiplier will be used)]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `EDrivenBoneModificationMode ModificationMode [The type of modification to make to the destination component(s)]`
- `float32 Multiplier [Multiplier to apply to the input value (Note: Ignored when a curve is used)]`
- `FName ParameterName [Name of Morph Target to drive using the source attribute]`
- `float RangeMax [Maximum limit of the input value (mapped to RemappedMax, only used when limiting the source range)
If this is rotation, the unit is radian]`
- `float RangeMin [Minimum limit of the input value (mapped to RemappedMin, only used when limiting the source range)
If this is rotation, the unit is radian]`
- `float RemappedMax [Maximum value to apply to the destination (remapped from the input range)
If this is rotation, the unit is radian]`
- `float RemappedMin [Minimum value to apply to the destination (remapped from the input range)
If this is rotation, the unit is radian]`
- `FBoneReference SourceBone [Bone to use as controller input]`
- `EComponentType SourceComponent [Transform component to use as input]`
- `FBoneReference TargetBone [Bone to drive using controller input]`
- `bool bAffectTargetRotationX [Affect the X component of rotation on the target bone]`
- `bool bAffectTargetRotationY [Affect the Y component of rotation on the target bone]`
- `bool bAffectTargetRotationZ [Affect the Z component of rotation on the target bone]`
- `bool bAffectTargetScaleX [Affect the X component of scale on the target bone]`
- `bool bAffectTargetScaleY [Affect the Y component of scale on the target bone]`
- `bool bAffectTargetScaleZ [Affect the Z component of scale on the target bone]`
- `bool bAffectTargetTranslationX [Affect the X component of translation on the target bone]`
- `bool bAffectTargetTranslationY [Affect the Y component of translation on the target bone]`
- `bool bAffectTargetTranslationZ [Affect the Z component of translation on the target bone]`
- `bool bAlphaBoolEnabled`
- `bool bUseRange [Whether or not to clamp the driver value and remap it before scaling it]`


**方法**:

- `FAnimNode_BoneDrivenController& opAssign(FAnimNode_BoneDrivenController Other)`

---


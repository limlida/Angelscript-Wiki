### FAnimNode_TwistCorrectiveNode


This is the node that apply corrective morphtarget for twist
Good example is that if you twist your neck too far right or left, you're going to see odd stretch shape of neck,
This node can detect the angle and apply morphtarget curve
This isn't the twist control node for bone twist

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FReferenceBoneFrame BaseFrame [Base Frame of the reference for the twist node]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `FName CurveName []`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 RangeMax [Maximum limit of the input value (mapped to RemappedMax, only used when limiting the source range)
We can't go more than 180 right now because this is dot product driver]`
- `float32 RemappedMax [Maximum value to apply to the destination (remapped from the input range)]`
- `float32 RemappedMin [Minimum value to apply to the destination (remapped from the input range)]`
- `FReferenceBoneFrame TwistFrame [Transform component to use as input]`
- `FAxis TwistPlaneNormalAxis [Normal of the Plane that we'd like to calculate angle calculation from in BaseFrame. Please note we're looking for Normal Axis]`
- `bool bAlphaBoolEnabled`


**方法**:

- `FAnimNode_TwistCorrectiveNode& opAssign(FAnimNode_TwistCorrectiveNode Other)`

---


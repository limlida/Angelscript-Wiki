### FContextualAnimTrack


**属性**:

- `float32 AnimMaxStartTime`
- `int AnimSetIdx []`
- `int AnimTrackIdx []`
- `UAnimSequenceBase Animation`
- `uint8 CustomMovementMode [If 'bChangeMovementMode' is true, and the 'MovementMode' is Custom, it'll set this custom movement mode during the scope of this anim track.]`
- `FTransform MeshToScene`
- `EMovementMode MovementMode [If 'bChangeMovementMode' is true, will set the movement mode of the character using CAS, to this value, during the scope of this anim track.]`
- `FName Role []`
- `int SectionIdx []`
- `TArray<TObjectPtr<UContextualAnimSelectionCriterion>> SelectionCriteria []`
- `bool bChangeMovementMode [If true, will set the movement mode of the character using CAS, to 'MovementMode', during the scope of this anim track.]`
- `bool bControlCharacterRotation [If true: disable orientation of the character towards movement, controller's rotation and physics driven rotation during root motion.]`
- `bool bOptional [Whether the actor that should play this animation is optional]`


**方法**:

- `FContextualAnimTrack& opAssign(FContextualAnimTrack Other)`

---


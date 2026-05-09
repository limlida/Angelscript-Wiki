### FAnimNode_Slot


An animation slot node normally acts as a passthru, but a montage or PlaySlotAnimation call from
game code can cause an animation to blend in and be played on the slot temporarily, overriding the
Source input.

**属性**:

- `FName SlotName [The name of this slot, exposed to gameplay code, etc...]`
- `FPoseLink Source [The source input, passed thru to the output unless a montage or slot animation is currently playing]`
- `bool bAlwaysUpdateSourcePose [Whether we should continue to update the source pose regardless of whether it would be used.]`


**方法**:

- `FAnimNode_Slot& opAssign(FAnimNode_Slot Other)`

---


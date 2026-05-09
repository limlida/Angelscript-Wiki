### FAnimNode_BlendSpaceGraphBase


Allows multiple animations to be blended between based on input parameters

**属性**:

- `FName GroupName [The group name that we synchronize with (NAME_None if it is not part of any group). Note that
this is the name of the group used to sync the output of this node - it will not force
syncing of animations contained by it. Animations inside this Blend Space have their own
options for syncing.]`
- `EAnimGroupRole GroupRole [The role this Blend Space can assume within the group (ignored if GroupName is not set). Note
that this is the role of the output of this node, not of animations contained by it.]`
- `float32 X [The X coordinate to sample in the blendspace]`
- `float32 Y [The Y coordinate to sample in the blendspace]`


**方法**:

- `FAnimNode_BlendSpaceGraphBase& opAssign(FAnimNode_BlendSpaceGraphBase Other)`

---


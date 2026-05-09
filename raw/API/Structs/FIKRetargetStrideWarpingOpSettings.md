### FIKRetargetStrideWarpingOpSettings


**属性**:

- `TArray<FRetargetStrideWarpChainSettings> ChainSettings [The chains to apply stride warping to]`
- `float DebugDrawSize [Adjust the size of the debug drawing]`
- `float DebugDrawThickness [Adjust the thickness of the debug drawing]`
- `FName DirectionChain [When using the "Chain" option as a Direction Source, this defines the chain to use to determine the facing direction of the character.
Typically this would be the chain that contains the Spine bones.]`
- `EWarpingDirectionSource DirectionSource [Defines the source used to determine the forward direction as the character animates in world space. Default is "Goals".
This method uses various positions on the character to create a "best fit" global rotation that approximates the facing direction of the character over time.
This global rotation is used to define the forward and sideways directions used when warping goals along those axes.
The options are:
Goals: uses the positions of the IK goals to approximate the facing direction. This is best used on characters with a vertical spine, like bipeds.
Chain: uses the positions of the bones in a retarget chain to approximate the facing direction. This is best when used with the spine chain for characters with a horizontal spine, like quadrupeds.
Root Bone: uses the rotation of the root bone of the skeleton. This is most robust, but character must have correct root motion with yaw rotation in movement direction.]`
- `EBasicAxis ForwardDirection [The world space axis that represents the forward facing direction for your character. By default, in Unreal, this is +Y.]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `float SidewaysOffset [Range -+Inf. Default is 0. A static offset in world units to move the IK goals perpendicular to the forward direction.
Values less than zero will move the goals towards the center-line of the character. Values greater than zero push the goals outwards.]`
- `float WarpForwards [Range 0 to Inf. Default 1. Warps IK goal positions in the forward direction. Useful for stride warping.
Values below 1 will create smaller, squashed strides. Values greater than 1 will create stretched, longer strides.]`
- `float WarpSplay [Range 0 to +Inf. Default is 1.0f.
Values below 1 pull all the goals towards the average of all the goals (towards each other).
Values greater than 1 push the goals apart.]`


**方法**:

- `FIKRetargetStrideWarpingOpSettings& opAssign(FIKRetargetStrideWarpingOpSettings Other)`

---


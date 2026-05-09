### UEulerAnalysisProperties


**属性**:

- `EAnalysisLinearAxis BoneFacingAxis [Used for some analysis functions - specifies the bone/socket axis that points in the facing/forwards direction]`
- `EAnalysisLinearAxis BoneRightAxis [Used for some analysis functions - specifies the bone/socket axis that points to the "right"]`
- `FBoneSocketTarget BoneSocket [The bone or socket used for analysis]`
- `EAnalysisLinearAxis CharacterFacingAxis [World or bone/socket axis that specifies the character's facing direction]`
- `EAnalysisLinearAxis CharacterUpAxis [World or bone/socket axis that specifies the character's up direction]`
- `float32 EndTimeFraction [Fraction through each animation at which analysis ends]`
- `EEulerCalculationMethod EulerCalculationMethod [Used for some analysis functions - specifies how yaw should be calculated from the bone axes]`
- `EAnalysisEulerAxis FunctionAxis [Axis for the analysis function]`
- `EAnalysisSpace Space [The space in which to perform the analysis. Fixed will use the analysis bone/socket at the first frame
of the analysis time range. Changing will use the analysis bone/socket at the relevant frame during the
analysis, but calculate velocities assuming that frame isn't moving. Moving will do the same but velocities
as well as positions/rotations will be relative to this moving frame.]`
- `FBoneSocketTarget SpaceBoneSocket [Bone or socket that defines the analysis space (when it isn't World)]`
- `float32 StartTimeFraction [Fraction through each animation at which analysis starts]`

---


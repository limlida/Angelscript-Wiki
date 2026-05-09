### ULinearAnalysisPropertiesBase


**属性**:

- `FBoneSocketTarget BoneSocket [The bone or socket used for analysis]`
- `float32 EndTimeFraction [Fraction through each animation at which analysis ends]`
- `EAnalysisSpace Space [The space in which to perform the analysis. Fixed will use the analysis bone/socket at the first frame
of the analysis time range. Changing will use the analysis bone/socket at the relevant frame during the
analysis, but calculate velocities assuming that frame isn't moving. Moving will do the same but velocities
as well as positions/rotations will be relative to this moving frame.]`
- `FBoneSocketTarget SpaceBoneSocket [Bone or socket that defines the analysis space (when it isn't World)]`
- `float32 StartTimeFraction [Fraction through each animation at which analysis starts]`

---


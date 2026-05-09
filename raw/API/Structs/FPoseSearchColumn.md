### FPoseSearchColumn


This column filters out all assets except the one which is selected by motion matching query.  Results must be AnimationAssets with a PoseSearchBranchIn notify state.  It also outputs OutputStartTime to specify the frame which matched pose best.  To work as intended it must be placed last (furthest right) in the Chooser so that other filters are applied first.

**属性**:

- `FInstancedStruct InputValue [Pose History]`
- `FInstancedStruct InterruptMode [Applied EPoseSearchInterruptMode controlling the continuing pose search evaluation. Defaulted to EPoseSearchInterruptMode::DoNotInterrupt if not set]`
- `int MaxNumberOfResults [@todo: expose it as pinnable parameter
MaxNumberOfResults represent the maximum number of results from the motion matching search. if MaxNumberOfResults <= 0 the column will add ALL the results to the output
if bEnableMultiSelection is true, this FPoseSearchColumn will be set as cost column, retrieving multiple results from the MM search (one per chooser table entry)
and setting their relative costs to be used with subsequent column such as the FRandomizeColumn for additional results refinements.
if bEnableMultiSelection is false, this FPoseSearchColumn will return ONLY the best result, the one with the lowest cost]`
- `FInstancedStruct OutputCost [Float output for the cost of the selected pose]`
- `FInstancedStruct OutputForceBlendTo [Bool output for suggesting a chooser player to force a blend into the newly selected asset]`
- `FInstancedStruct OutputMirror [Bool output for if asset should be mirrored]`
- `FInstancedStruct OutputStartTime [Float output for the start time with the best matching pose]`
- `float32 PoseReselectHistory [@todo: expose it as pinnable parameter
Prevent re-selection of poses that have been selected previously within this much time (in seconds) in the past. This is across all animation segments that have been selected within this time range.]`
- `bool bDisabled []`


**方法**:

- `FPoseSearchColumn& opAssign(FPoseSearchColumn Other)`

---


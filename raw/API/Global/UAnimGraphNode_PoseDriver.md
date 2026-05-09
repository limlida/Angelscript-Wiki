### UAnimGraphNode_PoseDriver


**属性**:

- `float32 AxisLength [Length of axis in world units used for debug drawing]`
- `int ConeSubdivision [Number of subdivisions / lines used when debug drawing a cone]`
- `FAnimNode_PoseDriver Node`
- `bool bDrawDebugCones [If checked the cones will be drawn in 3d for debugging]`


**方法**:

- `CopyTargetsFromPoseAsset()`  
  Util to replace current contents of PoseTargets with info from assigned PoseAsset
- `GetDrivingBoneNames(TArray<FName>& BoneNames)`  
  Returns the pose-driver its driven bones by name
- `EPoseDriverOutput& GetPoseDriverOutput()`
- `EPoseDriverSource& GetPoseDriverSource()`
- `FRBFParams& GetRBFParameters()`
- `GetSourceBoneNames(TArray<FName>& BoneNames)`  
  Returns the pose-driver its source bones by name
- `SetDrivingBones(TArray<FName> BoneNames)`  
  Set the pose-driver its driven bones by name
- `SetPoseDriverOutput(EPoseDriverOutput DriverOutput)`
- `SetPoseDriverSource(EPoseDriverSource DriverSource)`
- `SetRBFParameters(FRBFParams Parameters)`
- `SetSourceBones(TArray<FName> BoneNames)`  
  Sets the pose-driver its source bones by name

---


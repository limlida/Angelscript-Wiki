### FAnimPose


Script friendly representation of an evaluated animation bone pose

**方法**:

- `EvaluateAnimationBlueprintWithInputPose(USkeletalMesh TargetSkeletalMesh, UAnimBlueprint AnimationBlueprint, FAnimPose& OutPose) const`  
  Evaluates an Animation Blueprint instance, using the provided Anim Pose and its Input Pose value, generating a valid Anim Pose using the result. Warning this function may cause performance issues.

@param        InputPose                               Anim Pose used to populate the input pose node value inside of the Animation Blueprint
@param        TargetSkeletalMesh              USkeletalMesh object used as the target skeletal mesh, should have same USkeleton as InputPose and Animation Blueprint
@param        AnimationBlueprint              Animation Blueprint to generate an AnimInstance with, used to evaluate the output Anim Pose
@param        OutPose                                 Anim pose to hold the data from evaluating the Animation Blueprint instance
- `GetBoneNames(TArray<FName>& Bones) const`  
  Returns an array of bone names contained by the pose

@param        Pose    Anim Pose to retrieve the names from
@param        Bones   Array to be populated with the bone names
- `FTransform GetBonePose(FName BoneName, EAnimPoseSpaces Space = EAnimPoseSpaces :: Local) const`  
  Retrieves the transform for the provided bone name from a pose

@param        Pose            Anim Pose to retrieve the transform from
@param        BoneName        Name of the bone to retrieve
@param        Space           Space in which the transform should be retrieved

@return       Transform in requested space for bone if found, otherwise return identity transform
- `GetCurveNames(TArray<FName>& Curves) const`  
  Returns an array of curve names contained by the pose

@param        Pose    Anim Pose to retrieve the names from
@param        Curves  Array to be populated with the curve names
- `float32 GetCurveWeight(FName CurveName) const`  
  Returns the weight of an evaluated curve - if found

@param   Pose            Anim Pose to retrieve the value from
@param   CurveName       Curve to retrieve the weight value for

@return  Curve weight value, if found - 0.f otherwise
- `FTransform GetRefBonePose(FName BoneName, EAnimPoseSpaces Space = EAnimPoseSpaces :: Local) const`  
  Retrieves the reference pose transform for the provided bone name

@param        Pose            Anim Pose to retrieve the transform from
@param        BoneName        Name of the bone to retrieve
@param        Space           Space in which the transform should be retrieved

@return       Transform in requested space for bone if found, otherwise return identity transform
- `FTransform GetRefPoseRelativeTransform(FName FromBoneName, FName ToBoneName, EAnimPoseSpaces Space = EAnimPoseSpaces :: Local) const`  
  Retrieves the relative transform for the reference pose between the two provided bone names

@param        Pose                    Anim Pose to retrieve the transform from
@param        FromBoneName    Name of the bone to retrieve the transform relative from
@param        ToBoneName              Name of the bone to retrieve the transform relative to
@param        Space                   Space in which the transform should be retrieved

@return       Relative transform in requested space for bone if found, otherwise return identity transform
- `FTransform GetRelativeToRefPoseTransform(FName BoneName, EAnimPoseSpaces Space = EAnimPoseSpaces :: Local) const`  
  Retrieves the relative transform between reference and animated bone transform

@param        Pose                    Anim Pose to retrieve the transform from
@param        BoneName                Name of the bone to retrieve the relative transform for
@param        Space                   Space in which the transform should be retrieved

@return       Relative transform in requested space for bone if found, otherwise return identity transform
- `FTransform GetRelativeTransform(FName FromBoneName, FName ToBoneName, EAnimPoseSpaces Space = EAnimPoseSpaces :: Local) const`  
  Retrieves the relative transform between the two provided bone names

@param        Pose                    Anim Pose to retrieve the transform from
@param        FromBoneName    Name of the bone to retrieve the transform relative from
@param        ToBoneName              Name of the bone to retrieve the transform relative to
@param        Space                   Space in which the transform should be retrieved

@return       Relative transform in requested space for bone if found, otherwise return identity transform
- `GetSocketNames(TArray<FName>& Sockets) const`  
  Returns an array of socket names contained by the pose

@param        Pose    Anim Pose to retrieve the names from
@param        Sockets Array to be populated with the socket names
- `FTransform GetSocketPose(FName SocketName, EAnimPoseSpaces Space = EAnimPoseSpaces :: Local) const`  
  Retrieves the transform for the provided socket name from a pose

@param        Pose            Anim Pose to retrieve the transform from
@param        SocketName      Name of the socket to retrieve
@param        Space           Space in which the transform should be retrieved

@return       Transform in requested space for bone if found, otherwise return identity transform
- `bool IsValid() const`  
  Returns whether the Anim Pose contains valid data

@param        Pose    Anim Pose to validate

@return       Result of the validation
- `SetBonePose(FTransform Transform, FName BoneName, EAnimPoseSpaces Space = EAnimPoseSpaces :: Local)`  
  Sets the transform for the provided bone name for a pose

@param        Pose            Anim Pose to set transform in
@param        Transform       Transform to set the bone to
@param        BoneName        Name of the bone to set
@param        Space           Space in which the transform should be set
- `FAnimPose& opAssign(FAnimPose Other)`

---


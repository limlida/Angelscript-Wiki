### UControlRigComponent


A component that hosts an animation ControlRig, manages control components and marshals data between the two

**属性**:

- `TSubclassOf<UControlRig> ControlRigClass [The class of control rig to instantiate]`
- `float32 LazyEvaluationPositionThreshold [The delta threshold for a translation / position difference. 0.0 disables position differences.]`
- `float32 LazyEvaluationRotationThreshold [The delta threshold for a rotation difference (in degrees). 0.0 disables rotation differences.]`
- `float32 LazyEvaluationScaleThreshold [The delta threshold for a scale difference. 0.0 disables scale differences.]`
- `FControlRigComponentDelegate OnPostConstructionDelegate [Event fired after this component's ControlRig is setup]`
- `FControlRigComponentDelegate OnPostForwardsSolveDelegate [Event fired after this component's ControlRig's forwards solve]`
- `FControlRigComponentDelegate OnPostInitializeDelegate [Event fired after this component's ControlRig is initialized]`
- `FControlRigComponentDelegate OnPreConstructionDelegate [Event fired before this component's ControlRig is setup]`
- `FControlRigComponentDelegate OnPreForwardsSolveDelegate [Event fired before this component's ControlRig's forwards solve]`
- `FControlRigComponentDelegate OnPreInitializeDelegate [Event fired just before this component's ControlRig is initialized]`
- `TArray<FControlRigComponentMappedElement> UserDefinedElements []`
- `bool bDrawBones [When checked the rig's bones are drawn using debug drawing similar to the animation editor viewport]`
- `bool bEnableLazyEvaluation [When checked the rig will only run if any of the mapped inputs has changed]`
- `bool bResetInitialsBeforeConstruction [When checked the initial transforms on bones, nulls and controls are reset prior to a construction event]`
- `bool bResetTransformBeforeTick [When checked the transforms are reset before a tick / update of the rig]`
- `bool bShowDebugDrawing [When checked the rig's debug drawing instructions are drawn in the viewport]`
- `bool bUpdateInEditor [When checked the rig is run in the editor viewport without running / simulation the game]`
- `bool bUpdateRigOnTick [When checked this ensures to run the rig's update on the component's tick automatically]`


**方法**:

- `AddMappedCompleteSkeletalMesh(USkeletalMeshComponent SkeletalMeshComponent, EControlRigComponentMapDirection InDirection = EControlRigComponentMapDirection :: Output)`  
  Adds all matching bones to the rig, should not be used before OnPreInitialize Event
- `AddMappedComponents(TArray<FControlRigComponentMappedComponent> Components)`  
  Adds a series of mapped bones to the rig, should not be used before OnPreInitialize Event
- `AddMappedElements(TArray<FControlRigComponentMappedElement> NewMappedElements)`  
  Adds the provided mapped elements to the component, should not be used before OnPreInitialize Event
- `AddMappedSkeletalMesh(USkeletalMeshComponent SkeletalMeshComponent, TArray<FControlRigComponentMappedBone> Bones, TArray<FControlRigComponentMappedCurve> Curves, EControlRigComponentMapDirection InDirection = EControlRigComponentMapDirection :: Output)`  
  Adds a series of mapped bones to the rig, should not be used before OnPreInitialize Event
- `bool CanExecute()`  
  Returns true if the Component can execute its Control Rig
- `ClearMappedElements()`  
  Removes all mapped elements from the component
- `bool DoesElementExist(FName Name, ERigElementType ElementType = ERigElementType :: Bone)`  
  Returns true if an element given a type and name exists in the rig
@param Name The name for the element to look up
@param ElementType The type of element to look up

@return true if the element exists
- `float32 GetAbsoluteTime() const`  
  Get the ControlRig's local time in seconds since its last initialize
- `FTransform GetBoneTransform(FName BoneName, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace)`  
  Returns the transform of the bone in the requested space
@param BoneName The name of the bone to retrieve the transform for
@param Space The space to retrieve the transform in

@return the transform of the bone in the requested space
- `bool GetControlBool(FName ControlName)`  
  Returns the value of a bool control
@param ControlName The name of the control to retrieve the value for

@return The bool value of the control
- `float32 GetControlFloat(FName ControlName)`  
  Returns the value of a float control
@param ControlName The name of the control to retrieve the value for

@return The float value of the control
- `int GetControlInt(FName ControlName)`  
  Returns the value of an integer control
@param ControlName The name of the control to retrieve the value for

@return The int32 value of the control
- `FTransform GetControlOffset(FName ControlName, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace)`  
  Returns the offset transform of a control
@param ControlName The name of the control to retrieve the offset transform for
@param Space The space to retrieve the offset transform in

@return The offset transform of a control
- `FVector GetControlPosition(FName ControlName, EControlRigComponentSpace Space = EControlRigComponentSpace :: LocalSpace)`  
  Returns the value of a position control
@param ControlName The name of the control to retrieve the value for
@param Space The space to retrieve the control's value in

@return The position value of the control
- `UControlRig GetControlRig()`  
  Get the ControlRig hosted by this component
- `FRotator GetControlRotator(FName ControlName, EControlRigComponentSpace Space = EControlRigComponentSpace :: LocalSpace)`  
  Returns the value of a rotator control
@param ControlName The name of the control to retrieve the value for
@param Space The space to retrieve the control's value in

@return The rotator value of the control
- `FVector GetControlScale(FName ControlName, EControlRigComponentSpace Space = EControlRigComponentSpace :: LocalSpace)`  
  Returns the value of a scale control
@param ControlName The name of the control to retrieve the value for
@param Space The space to retrieve the control's value in

@return The scale value of the control
- `FTransform GetControlTransform(FName ControlName, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace)`  
  Returns the value of a transform control
@param ControlName The name of the control to retrieve the value for
@param Space The space to retrieve the control's value in

@return The transform value of the control
- `FVector2D GetControlVector2D(FName ControlName)`  
  Returns the value of a Vector3D control
@param ControlName The name of the control to retrieve the value for

@return The Vector3D value of the control
- `TArray<FName> GetElementNames(ERigElementType ElementType = ERigElementType :: Bone)`  
  Returns all of the names for a given element type (Bone, Control, etc)
@param ElementType The type of elements to return the names for

@return all of the names for a given element type (Bone, Control, etc)
- `FTransform GetInitialBoneTransform(FName BoneName, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace)`  
  Returns the initial transform of the bone in the requested space
@param BoneName The name of the bone to retrieve the transform for
@param Space The space to retrieve the transform in

@return the initial transform of the bone in the requested space
- `FTransform GetInitialSpaceTransform(FName SpaceName, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace)`  
  Returns the initial transform of the space in the requested space
@param SpaceName The name of the space to retrieve the transform for
@param Space The space to retrieve the transform in

@return the initial transform of the space in the requested space
- `FTransform GetSpaceTransform(FName SpaceName, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace)`  
  Returns the transform of the space in the requested space
@param SpaceName The name of the space to retrieve the transform for
@param Space The space to retrieve the transform in

@return the transform of the space in the requested space
- `Initialize()`  
  Initializes the rig's memory and calls the construction event
- `OnPostConstruction(UControlRigComponent Component)`
- `OnPostForwardsSolve(UControlRigComponent Component)`
- `OnPostInitialize(UControlRigComponent Component)`
- `OnPreConstruction(UControlRigComponent Component)`
- `OnPreForwardsSolve(UControlRigComponent Component)`
- `OnPreInitialize(UControlRigComponent Component)`
- `SetBoneInitialTransformsFromSkeletalMesh(USkeletalMesh InSkeletalMesh)`  
  Setup the initial transforms / ref pose of the bones based on a skeletal mesh
- `SetBoneTransform(FName BoneName, FTransform Transform, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace, float32 Weight = 1.000000, bool bPropagateToChildren = true)`  
  Sets the transform of the bone in the requested space
@param BoneName The name of the bone to set the transform for
@param Space The space to set the transform in
@param Weight The weight of how much the change should be applied (0.0 to 1.0)
@param bPropagateToChildren If true the child bones will be moved together with the affected bone
- `SetControlBool(FName ControlName, bool Value)`  
  Sets the value of a bool control
@param ControlName The name of the control to set
@param Value The new value for the control
- `SetControlFloat(FName ControlName, float32 Value)`  
  Sets the value of a float control
@param ControlName The name of the control to set
@param Value The new value for the control
- `SetControlInt(FName ControlName, int Value)`  
  Sets the value of an integer control
@param ControlName The name of the control to set
@param Value The new value for the control
- `SetControlOffset(FName ControlName, FTransform OffsetTransform, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace)`  
  Sets the offset transform of a control
@param ControlName The name of the control to set
@param OffsetTransform The new offset trasnform for the control
@param Space The space to set the offset transform in
- `SetControlPosition(FName ControlName, FVector Value, EControlRigComponentSpace Space = EControlRigComponentSpace :: LocalSpace)`  
  Sets the value of a position control
@param ControlName The name of the control to set
@param Value The new value for the control
@param Space The space to set the value in
- `SetControlRigClass(TSubclassOf<UControlRig> InControlRigClass)`
- `SetControlRotator(FName ControlName, FRotator Value, EControlRigComponentSpace Space = EControlRigComponentSpace :: LocalSpace)`  
  Sets the value of a rotator control
@param ControlName The name of the control to set
@param Value The new value for the control
@param Space The space to set the value in
- `SetControlScale(FName ControlName, FVector Value, EControlRigComponentSpace Space = EControlRigComponentSpace :: LocalSpace)`  
  Sets the value of a scale control
@param ControlName The name of the control to set
@param Value The new value for the control
@param Space The space to set the value in
- `SetControlTransform(FName ControlName, FTransform Value, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace)`  
  Sets the value of a transform control
@param ControlName The name of the control to set
@param Value The new value for the control
@param Space The space to set the value in
- `SetControlVector2D(FName ControlName, FVector2D Value)`  
  Sets the value of a vector2D control
@param ControlName The name of the control to set
@param Value The new value for the control
- `SetInitialBoneTransform(FName BoneName, FTransform InitialTransform, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace, bool bPropagateToChildren = false)`  
  Sets the initial transform of the bone in the requested space
@param BoneName The name of the bone to set the transform for
@param InitialTransform The initial transform to set for the bone
@param Space The space to set the transform in
@param bPropagateToChildren If true the child bones will be moved together with the affected bone
- `SetInitialSpaceTransform(FName SpaceName, FTransform InitialTransform, EControlRigComponentSpace Space = EControlRigComponentSpace :: RigSpace)`  
  Sets the transform of the space in the requested space
@param SpaceName The name of the space to set the transform for
@param Space The space to set the transform in
- `SetMappedElements(TArray<FControlRigComponentMappedElement> NewMappedElements)`  
  Replaces the mapped elements on the component with the provided array, should not be used before OnPreInitialize Event
- `SetObjectBinding(UObject InObjectToBind)`
- `Update(float32 DeltaTime = 0.000000)`  
  Updates and ticks the rig.

---


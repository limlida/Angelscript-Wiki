### UContextualAnimSceneActorComponent


**属性**:

- `FTransform AlignmentOffset [Optional offset from the actor transform. Can be used to modify the final world space transform used for alignment.]`
- `FContextualAnimSceneActorCompDelegate OnJoinedSceneDelegate [Event that happens when the actor owner of this component joins an scene]`
- `FContextualAnimSceneActorCompDelegate OnLeftSceneDelegate [Event that happens when the actor owner of this component leave an scene]`
- `FContextualAnimOnMontageBlendingOutDelegate OnMontageBlendingOutDelegate`
- `FContextualAnimPlayMontageNotifyBeginDelegate OnPlayMontageNotifyBeginDelegate`
- `UContextualAnimSceneAsset SceneAsset`


**方法**:

- `EarlyOutContextualAnimScene(bool bStopEveryone = false)`
- `FContextualAnimSceneBindings GetBindings() const`
- `FContextualAnimIKTarget GetIKTargetByGoalName(FName GoalName) const`
- `TArray<FContextualAnimIKTarget> GetIKTargets() const`
- `bool IsInActiveScene() const`
- `bool LateJoinContextualAnimScene(AActor Actor, FName Role)`
- `OnJoinedScene(FContextualAnimSceneBindings InBindings)`  
  Called when the actor owner of this component joins an scene
- `OnLeftScene()`  
  Called from the scene instance when the actor owner of this component leave an scene
- `ServerEarlyOutContextualAnimScene(bool bStopEveryone)`
- `ServerStartContextualAnimScene(FContextualAnimSceneBindings InBindings)`
- `bool StartContextualAnimScene(FContextualAnimSceneBindings InBindings)`
- `bool TransitionContextualAnimScene(FName SectionName)`
- `bool TransitionContextualAnimSceneToSpecificSet(FName SectionName, int AnimSetIdx)`
- `bool TransitionSingleActor(int SectionIdx, int AnimSetIdx)`

---


### FPoseSearchBlueprintResult


namespace UE::PoseSearch

**属性**:

- `TArray<FTransform> ActorRootBoneTransforms [cached actors root bone transforms for all the roles in SelectedAnim (as UMultiAnimAsset). For all the optional missing roles (where the associated AnimContexts[i] is null), the ActorRootBoneTransform will be identity]`
- `TArray<FTransform> ActorRootTransforms [cached actors root transforms for all the roles in SelectedAnim (as UMultiAnimAsset). For all the optional missing roles (where the associated AnimContexts[i] is null), the ActorRootTransform will be identity]`
- `FVector BlendParameters [SelectedAnim associated BlendParameters (if SelectedAnim is a UBlendSpace)]`
- `FName Role [assigned role to this character. If this result is from a motion matched interaction, every interacting Actors will be assigned a different Role]`
- `float32 SearchCost [associated motion matching search cost for this result (how bad the SelectedAnim at SelectedTime etc looks in comparison to the query. The bigger the number, the more different the two are)]`
- `UObject SelectedAnim [selected animation selected by the motion matching alghoritm that matches the query (trajectory + historical pose) the best]`
- `const UPoseSearchDatabase SelectedDatabase [database containig the SelectedAnim]`
- `float32 SelectedTime [SelectedAnim associated time (to have the best result out of the motion matchign selection, play the SelectedAnim at the SelectedTime)]`
- `float32 WantedPlayRate [SelectedAnim suggested play rate (it's usually calculated by estimating the ratio between the trajectory speed in the query against the speed in the result)]`
- `bool bIsContinuingPoseSearch [SelectedAnim at SelectedTime is from the motion matching continuing pose search]`
- `bool bIsInteraction [bIsInteraction is true if this is a result from a motion matching interaction search]`
- `bool bIsMirrored [SelectedAnim associated mirror state]`
- `bool bLoop [SelectedAnim associated looping state]`


**方法**:

- `FPoseSearchBlueprintResult& opAssign(FPoseSearchBlueprintResult Other)`

---


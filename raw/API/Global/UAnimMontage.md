### UAnimMontage


Any property you're adding to AnimMontage and parent class has to be considered for Child Asset

Child Asset is considered to be only asset mapping feature using everything else in the class
For example, you can just use all parent's setting  for the montage, but only remap assets
This isn't magic bullet unfortunately and it is consistent effort of keeping the data synced with parent
If you add new property, please make sure those property has to be copied for children.
If it does, please add the copy in the function RefreshParentAssetData

**属性**:

- `FAlphaBlend BlendIn [Blend in option.]`
- `EMontageBlendMode BlendModeIn`
- `EMontageBlendMode BlendModeOut`
- `FAlphaBlend BlendOut [Blend out option. This is only used when it blends out itself. If it's interrupted by other montages, it will use new montage's BlendIn option to blend out.]`
- `float32 BlendOutTriggerTime [Time from Sequence End to trigger blend out.
<0 means using BlendOutTime, so BlendOut finishes as Montage ends.
>=0 means using 'SequenceEnd - BlendOutTriggerTime' to trigger blend out.]`
- `UBlendProfile BlendProfileIn [The blend profile to use.]`
- `UBlendProfile BlendProfileOut [The blend profile to use.]`
- `UAnimSequence PreviewBasePose [Preview Base pose for additive BlendSpace *]`
- `FName SyncGroup [If you're using marker based sync for this montage, make sure to add sync group name. For now we only support one group]`
- `int SyncSlotIndex [Index of the slot track used for collecting sync markers]`
- `FTimeStretchCurve TimeStretchCurve [Time stretch curve will only be used when the montage has a non-default play rate]`
- `FName TimeStretchCurveName [Name of optional TimeStretchCurveName to look for in Montage. Time stretch curve will only be used when the montage has a non-default play rate]`
- `bool bEnableAutoBlendOut [When it hits end, it automatically blends out. If this is false, it won't blend out but keep the last pose until stopped explicitly]`


**方法**:

- `FAlphaBlendArgs GetBlendInArgs() const`
- `FAlphaBlendArgs GetBlendOutArgs() const`
- `float32 GetDefaultBlendInTime() const`
- `float32 GetDefaultBlendOutTime() const`
- `UAnimSequenceBase GetFirstAnimReference() const`
- `FName GetGroupName() const`  
  Get the Montage's Group Name. This is the group from the first slot.
- `int GetNumSections() const`  
  Returns the number of sections this montage has
- `int GetSectionIndex(FName InSectionName) const`  
  Get SectionIndex from SectionName. Returns INDEX_None if not found
- `FName GetSectionName(int SectionIndex) const`  
  Get SectionName from SectionIndex. Returns NAME_None if not found
- `bool IsDynamicMontage() const`
- `bool IsValidAdditiveSlot(FName SlotNodeName) const`  
  Check if this slot has a valid additive animation for the specified slot.
The slot name should not include the group name.
i.e. for "DefaultGroup.DefaultSlot", the slot name is "DefaultSlot".
- `bool IsValidSectionName(FName InSectionName) const`  
  @return true if valid section

---


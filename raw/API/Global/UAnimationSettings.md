### UAnimationSettings


Default animation settings.

**属性**:

- `TMap<FName,ECustomAttributeBlendType> AttributeBlendModes [Animation Attribute specific blend types (by name)]`
- `TArray<FCustomAttributeSetting> BoneCustomAttributesNames [List of animation attribute names to import directly on their corresponding bone names. The meaning field allows to contextualize the attribute name and customize tooling for it.]`
- `TArray<FString> BoneNamesWithCustomAttributes [List of bone names for which all animation attributes are directly imported on the bone.]`
- `FTimecodeCustomAttributeNameSettings BoneTimecodeCustomAttributeNameSettings [Names that identify bone animation attributes representing the individual components of a timecode and a subframe along with a take name.
          These will be included in the list of bone custom attribute names to import.]`
- `ECustomAttributeBlendType DefaultAttributeBlendMode [Default Animation Attribute blend type]`
- `FFrameRate DefaultFrameRate [Project specific default frame-rate used when (re)initializing any animation based data]`
- `bool ForceRecompression [If true, this will forcibly recompress every animation, this should not be checked in enabled]`
- `TArray<FString> KeyEndEffectorsMatchNameArray [List of bone names to treat with higher precision, in addition to any bones with sockets]`
- `TArray<FMirrorFindReplaceExpression> MirrorFindReplaceExpressions [Find and Replace Expressions used for mirroring]`
- `TArray<FString> TransformAttributeNames [Names to match against when importing FBX node transform curves as attributes (can use ? and * wildcards)]`
- `TArray<TSoftObjectPtr<UUserDefinedStruct>> UserDefinedStructAttributes [Register user defined structs as animation attributes]`
- `bool bEnablePerformanceLog [If true, recompression will log performance information]`
- `bool bEnforceSupportedFrameRates [Whether to enforce the project to only use entries from SupportedFrameRates for the animation assets, if disable will warn instead]`
- `bool bFirstRecompressUsingCurrentOrDefault [If true, then the animation will be first recompressed with its current compressor if non-NULL, or with the global default compressor (specified in the engine ini)
Also known as "Run Current Default Compressor"]`
- `bool bForceBelowThreshold [If true and the existing compression error is greater than Alternative Compression Threshold, then any compression technique (even one that increases the size) with a lower error will be used until it falls below the threshold]`
- `bool bStripAnimationDataOnDedicatedServer [If true, animation track data will be stripped from dedicated server cooked data]`
- `bool bTickAnimationOnSkeletalMeshInit [If true, pre-4.19 behavior of zero-ticking animations during skeletal mesh init]`


**方法**:

- `TArray<FString> GetBoneCustomAttributeNamesToImport() const`  
  Gets the complete list of bone animation attribute names to consider for import.
          This includes the designated timecode animation attributes as well as other bone animation attributes identified in the settings.

---


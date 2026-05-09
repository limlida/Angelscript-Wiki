### UMetaSoundBuilderSubsystem


The subsystem in charge of tracking MetaSound builders

**方法**:

- `FMetasoundFrontendLiteral CreateBoolArrayMetaSoundLiteral(TArray<bool> Value, FName& DataType)`
- `FMetasoundFrontendLiteral CreateBoolMetaSoundLiteral(bool Value, FName& DataType)`
- `FMetasoundFrontendLiteral CreateFloatArrayMetaSoundLiteral(TArray<float32> Value, FName& DataType)`
- `FMetasoundFrontendLiteral CreateFloatMetaSoundLiteral(float32 Value, FName& DataType)`
- `FMetasoundFrontendLiteral CreateIntArrayMetaSoundLiteral(TArray<int> Value, FName& DataType)`
- `FMetasoundFrontendLiteral CreateIntMetaSoundLiteral(int Value, FName& DataType)`
- `FMetasoundFrontendLiteral CreateMetaSoundLiteralFromParam(FAudioParameter Param)`
- `FMetasoundFrontendLiteral CreateObjectArrayMetaSoundLiteral(TArray<UObject> Value)`
- `FMetasoundFrontendLiteral CreateObjectMetaSoundLiteral(UObject Value)`
- `UMetaSoundPatchBuilder CreatePatchBuilder(FName BuilderName, EMetaSoundBuilderResult& OutResult)`
- `UMetaSoundSourceBuilder CreateSourceBuilder(FName BuilderName, FMetaSoundBuilderNodeOutputHandle& OnPlayNodeOutput, FMetaSoundBuilderNodeInputHandle& OnFinishedNodeInput, TArray<FMetaSoundBuilderNodeInputHandle>& AudioOutNodeInputs, EMetaSoundBuilderResult& OutResult, EMetaSoundOutputAudioFormat OutputFormat = EMetaSoundOutputAudioFormat :: Mono, bool bIsOneShot = true)`
- `FMetasoundFrontendLiteral CreateStringArrayMetaSoundLiteral(TArray<FString> Value, FName& DataType)`
- `FMetasoundFrontendLiteral CreateStringMetaSoundLiteral(FString Value, FName& DataType)`
- `UMetaSoundBuilderBase FindBuilder(FName BuilderName)`  
  Returns the builder manually registered with the MetaSound Builder Subsystem with the provided custom name (if previously registered)
- `UMetaSoundPatchBuilder FindPatchBuilder(FName BuilderName)`  
  Returns the patch builder manually registered with the MetaSound Builder Subsystem with the provided custom name (if previously registered)
- `UMetaSoundSourceBuilder FindSourceBuilder(FName BuilderName)`  
  Returns the source builder manually registered with the MetaSound Builder Subsystem with the provided custom name (if previously registered)
- `bool IsInterfaceRegistered(FName InInterfaceName) const`
- `RegisterBuilder(FName BuilderName, UMetaSoundBuilderBase Builder)`  
  Adds builder to subsystem's registry to make it persistent and easily accessible by multiple systems or Blueprints
- `RegisterPatchBuilder(FName BuilderName, UMetaSoundPatchBuilder Builder)`  
  Adds builder to subsystem's registry to make it persistent and easily accessible by multiple systems or Blueprints
- `RegisterSourceBuilder(FName BuilderName, UMetaSoundSourceBuilder Builder)`  
  Adds builder to subsystem's registry to make it persistent and easily accessible by multiple systems or Blueprints
- `bool SetTargetPage(FName PageName)`  
  Sets the targeted page for all MetaSound graph & input default to resolve against.
If target page is not implemented (or cooked in a runtime build) for the active platform,
uses order of cooked pages(see 'Page Settings' for order) falling back to lower index - ordered page
implemented in MetaSound asset. If no fallback is found, uses default graph/input default.
- `bool UnregisterBuilder(FName BuilderName)`
- `bool UnregisterPatchBuilder(FName BuilderName)`
- `bool UnregisterSourceBuilder(FName BuilderName)`

---


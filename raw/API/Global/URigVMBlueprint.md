### URigVMBlueprint


**属性**:

- `FRigVMVariant AssetVariant [Variant information about this asset]`
- `FRigVMEdGraphDisplaySettings RigGraphDisplaySettings []`
- `FRigVMCompileSettings VMCompileSettings`
- `FRigVMRuntimeSettings VMRuntimeSettings []`


**方法**:

- `FName AddMemberVariable(FName InName, FString InCPPType, bool bIsPublic = false, bool bIsReadOnly = false, FString InDefaultValue = "")`
- `URigVMGraph AddModel(FString InName = "Rig Graph", bool bSetupUndoRedo = true, bool bPrintPythonCommand = true)`
- `bool BulkRemoveMemberVariables(TArray<FName> InNames)`
- `bool ChangeMemberVariableType(FName InName, FString InCPPType, bool bIsPublic = false, bool bIsReadOnly = false, FString InDefaultValue = "")`
- `URigVMHost CreateRigVMHost()`
- `TArray<FString> GeneratePythonCommands(FString InNewBlueprintName)`
- `TArray<URigVMGraph> GetAllModels() const`
- `FRigVMVariant GetAssetVariant() const`
- `FRigVMVariantRef GetAssetVariantRef() const`
- `bool GetAutoVMRecompile() const`
- `TArray<UStruct> GetAvailableRigVMStructs() const`
- `URigVMController GetController(const URigVMGraph InGraph = nullptr) const`
- `URigVMController GetControllerByName(FString InGraphName = "") const`
- `URigVMHost GetDebuggedRigVMHost()`
- `URigVMGraph GetDefaultModel() const`
- `URigVMGraph GetFocusedModel() const`
- `URigVMFunctionLibrary GetLocalFunctionLibrary() const`
- `TArray<FRigVMVariantRef> GetMatchingVariants() const`
- `TArray<FRigVMGraphVariableDescription> GetMemberVariables() const`
- `URigVMGraph GetModel(const UEdGraph InEdGraph = nullptr) const`
- `URigVMController GetOrCreateController(URigVMGraph InGraph = nullptr)`
- `URigVMFunctionLibrary GetOrCreateLocalFunctionLibrary(bool bSetupUndoRedo = true)`
- `UClass GetRigVMHostClass() const`
- `bool JoinAssetVariant(FGuid InGuid)`  
  Merges the asset's guid with a provided one to join the variant set
- `RecompileVM()`  
  --- IRigVMClientHost interface End---
- `RecompileVMIfRequired()`
- `bool RemoveMemberVariable(FName InName)`
- `bool RemoveModel(FString InName = "Rig Graph", bool bSetupUndoRedo = true, bool bPrintPythonCommand = true)`
- `bool RenameMemberVariable(FName InOldName, FName InNewName)`
- `RequestAutoVMRecompilation()`
- `RequestRigVMInit()`
- `SetAutoVMRecompile(bool bAutoRecompile)`
- `bool SplitAssetVariant()`  
  Resets the asset's guid to a new one and splits it from the former variant set
- `SuspendNotifications(bool bSuspendNotifs)`

---


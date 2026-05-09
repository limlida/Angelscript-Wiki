### UModularRigController


**方法**:

- `FName AddModule(FName InModuleName, TSubclassOf<UControlRig> InClass, FName InParentModuleName, bool bSetupUndo = true)`
- `bool AddTargetToArrayConnector(FRigElementKey InConnectorKey, FRigElementKey InTargetKey, bool bSetupUndo = true, bool bAutoResolveOtherConnectors = true, bool bCheckValidConnection = true)`
- `bool AutoConnectModules(TArray<FName> InModuleNames, bool bReplaceExistingConnections, bool bSetupUndo = true)`
- `bool AutoConnectSecondaryConnectors(TArray<FRigElementKey> InConnectorKeys, bool bReplaceExistingConnections, bool bSetupUndo = true)`
- `bool BindModuleVariable(FName InModuleName, FName InVariableName, FString InSourcePath, bool bSetupUndo = true)`
- `bool CanConnectConnectorToElement(FRigElementKey InConnectorKey, FRigElementKey InTargetKey, FText& OutErrorMessage)`
- `bool CanConnectConnectorToElements(FRigElementKey InConnectorKey, TArray<FRigElementKey> InTargetKeys, FText& OutErrorMessage)`
- `bool ConnectConnectorToElement(FRigElementKey InConnectorKey, FRigElementKey InTargetKey, bool bSetupUndo = true, bool bAutoResolveOtherConnectors = true, bool bCheckValidConnection = true)`
- `bool ConnectConnectorToElements(FRigElementKey InConnectorKey, TArray<FRigElementKey> InTargetKeys, bool bSetupUndo = true, bool bAutoResolveOtherConnectors = true, bool bCheckValidConnection = true)`
- `bool DeleteModule(FName InModuleName, bool bSetupUndo = true)`
- `bool DeselectModule(FName InModuleName)`
- `bool DisconnectConnector(FRigElementKey InConnectorKey, bool bDisconnectSubModules = false, bool bSetupUndo = true)`
- `TArray<FRigElementKey> DisconnectCyclicConnectors(bool bSetupUndo = true)`
- `FString ExportModuleSettingsToString(TArray<FName> InModuleNames) const`
- `TArray<FName> GetAllModules() const`
- `TArray<FRigElementKey> GetConnectorsForModule(FName InModuleName) const`  
  @param InModuleName The name of the module reference to return
@return Returns all of associated connectors for a given module name
- `FRigModuleReference GetModuleReference(FName InModuleName) const`  
  @param InModuleName The name of the module reference to return
@return Returns the module for the given name
- `TArray<FName> GetSelectedModules() const`
- `bool ImportModuleSettingsFromString(FString InContent, TArray<FName> InOptionalModuleNames, bool bSetupUndo = true)`
- `FName MirrorModule(FName InModuleName, FRigVMMirrorSettings InSettings, bool bSetupUndo = true)`
- `FName RenameModule(FName InModuleName, FName InNewName, bool bSetupUndo = true)`
- `bool ReorderModule(FName InModuleName, int InModuleIndex, bool bSetupUndo = true)`
- `bool ReparentModule(FName InModuleName, FName InNewParentModuleName, bool bSetupUndo = true)`
- `bool ResetConfigValueInModule(FName InModuleName, FString InPath, bool bClearOverride = true, bool bSetupUndo = true)`
- `bool SelectModule(FName InModuleName, bool InSelected = true)`
- `bool SetConfigValueInModule(FName InModuleName, FName InVariableName, FString InValue, bool bSetupUndo = true)`
- `bool SetModuleSelection(TArray<FName> InModuleNames)`
- `bool SwapModuleClass(FName InModuleName, TSubclassOf<UControlRig> InNewClass, bool bSetupUndo = true)`
- `bool SwapModulesOfClass(TSubclassOf<UControlRig> InOldClass, TSubclassOf<UControlRig> InNewClass, bool bSetupUndo = true)`
- `bool UnBindModuleVariable(FName InModuleName, FName InVariableName, bool bSetupUndo = true)`

---


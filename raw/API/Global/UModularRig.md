### UModularRig


Runs logic for mapping input data to transforms (the "Rig")

**方法**:

- `TArray<FName> ExecuteEventOnAllModules(FName InEvent)`  
  @param InEvent The name of the event to run
@return Returns the paths of all modules which ran the event successfully
- `bool ExecuteEventOnModuleByName(FName InEvent, FName InModuleName)`  
  @param InEvent The name of the event to run
@param InModuleName The name of the module to run the event on
@return Returns true if the event was run successfully
- `TArray<FName> GetEventsForAllModules() const`  
  @return Returns all of the events supported by the modules in this modular rig
- `TArray<FName> GetEventsForModuleByName(FName InModuleName) const`  
  @param InModuleName The name of the module to receive the events for
@return Returns the names of all supported events for a given module name
- `TArray<FName> GetModuleNames() const`  
  @return Returns all of the module paths within this rig
- `UControlRig GetModuleRigByName(FName InModuleName)`  
  @param InModuleName The name of the module to retrieve the rig for
@return Returns the rig instance for a given module name
- `FName GetParentModuleName(FName InModuleName) const`  
  @param InModuleName The name of the module to receive the parent module name for
@return Returns the parent name for a given module name (or an empty string)

---


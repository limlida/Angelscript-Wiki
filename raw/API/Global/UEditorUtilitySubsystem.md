### UEditorUtilitySubsystem


**属性**:

- `FOnEditorUtilityPIEEvent OnBeginPIE [Expose Begin PIE to blueprints.]`
- `FOnEditorUtilityPIEEvent OnEndPIE [Expose End PIE to blueprints.]`


**方法**:

- `bool CanRun(UObject Asset) const`
- `bool CloseTabByID(FName NewTabID)`  
  Given an ID for a tab, try to find and close an existing tab. Returns true if it found a tab to close.
- `bool DoesTabExist(FName NewTabID)`  
  Given an ID for a tab, try to find an existing tab. Returns true if it found a tab.
- `UEditorUtilityWidget FindUtilityWidgetFromBlueprint(UEditorUtilityWidgetBlueprint InBlueprint)`  
  Given an editor utility widget blueprint, get the widget it creates. This will return a null pointer if the widget is not currently in a tab.
- `RegisterAndExecuteTask(UEditorUtilityTask NewTask, UEditorUtilityTask OptionalParentTask = nullptr)`
- `RegisterTabAndGetID(UEditorUtilityWidgetBlueprint InBlueprint, FName& NewTabID)`
- `RegisterTabAndGetIDGeneratedClass(UWidgetBlueprintGeneratedClass InGeneratedWidgetBlueprint, FName& NewTabID)`
- `ReleaseInstanceOfAsset(UObject Asset)`  
  Allow startup object to be garbage collected
- `UEditorUtilityWidget SpawnAndRegisterTab(UEditorUtilityWidgetBlueprint InBlueprint)`
- `UEditorUtilityWidget SpawnAndRegisterTabAndGetID(UEditorUtilityWidgetBlueprint InBlueprint, FName& NewTabID)`
- `UEditorUtilityWidget SpawnAndRegisterTabAndGetIDGeneratedClass(UWidgetBlueprintGeneratedClass InGeneratedWidgetBlueprint, FName& NewTabID)`
- `UEditorUtilityWidget SpawnAndRegisterTabGeneratedClass(UWidgetBlueprintGeneratedClass InGeneratedWidgetBlueprint)`
- `UEditorUtilityWidget SpawnAndRegisterTabWithId(UEditorUtilityWidgetBlueprint InBlueprint, FName InTabID)`  
  Unlike SpawnAndRegisterTabAndGetID allows spawn tab while providing TabID from Python scripts or BP
- `UEditorUtilityWidget SpawnAndRegisterTabWithIdGeneratedClass(UWidgetBlueprintGeneratedClass InGeneratedWidgetBlueprint, FName InTabID)`  
  Unlike SpawnAndRegisterTabAndGetID allows spawn tab while providing TabID from Python scripts or BP
- `bool SpawnRegisteredTabByID(FName NewTabID)`  
  Given an ID for a tab, try to find a tab spawner that matches, and then spawn a tab. Returns true if it was able to find a matching tab spawner
- `bool TryRun(UObject Asset)`
- `bool TryRunClass(UClass ObjectClass)`
- `bool UnregisterTabByID(FName TabID)`  
  Given an ID for a tab, try to close and unregister a tab that was registered through this subsystem

---


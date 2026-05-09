### UWidgetEditingProjectSettings


Implements the settings for the UMG Editor Project Settings

**属性**:

- `TArray<FString> CategoriesToHide []`
- `TArray<TSoftClassPtr<UPanelWidget>> CommonRootWidgetClasses [This list populates the common class section of the root widget selection dialog]`
- `TArray<FDebugResolution> DebugResolutions []`
- `FWidgetCompilerOptions DefaultCompilerOptions []`
- `TSubclassOf<UPanelWidget> DefaultRootWidget [The panel widget to place at the root of all newly constructed widget blueprints. Can be empty.]`
- `TArray<FDirectoryWidgetCompilerOptions> DirectoryCompilerOptions []`
- `TArray<TSoftClassPtr<UUserWidget>> FavoriteWidgetParentClasses [The list of parent classes to choose from for newly constructed widget blueprints.
The classes must have empty widget hierarchies.]`
- `TArray<FSoftClassPath> WidgetClassesToHide []`
- `bool bCanCallInitializedWithoutPlayerContext [The default value of bCanCallInitializedWithoutPlayerContext.]`
- `bool bEnableBindWidgetWindow [Set true to enabled the Bind Widget window in the UMG editor.]`
- `bool bEnableHierarchyWindow [Set true to enabled the Widget Hierarchy window in the UMG editor.]`
- `bool bEnableLibraryWindow [Set true to enabled the Library window in the UMG editor.]`
- `bool bEnableMakeVariable [Set true to enable the Is Variable checkbox in the UMG editor DetailView.]`
- `bool bEnableNavigationSimulationWindow [Set true to enabled the Navigation Simulation window in the UMG editor.]`
- `bool bEnablePaletteWindow [Set true to enabled the Palette window in the UMG editor.]`
- `bool bEnableUIComponentsProperty []`
- `bool bEnableWidgetAnimationEditor [Set true to hide widget animation related elements in the UMG editor.]`
- `bool bShowWidgetsFromDeveloperContent []`
- `bool bShowWidgetsFromEngineContent []`
- `bool bUseEditorConfigPaletteFiltering [Set true to filter all categories and widgets out in the palette, selectively enabling them later via permission lists.]`
- `bool bUseUserWidgetParentClassViewerSelector [Enables a dialog that lets you select the parent class in a tree view.]`
- `bool bUseUserWidgetParentDefaultClassViewerSelector [Enables a dialog that lets you select the parent class in a default view.]`
- `bool bUseWidgetTemplateSelector [Enables a dialog that lets you select a root widget before creating a widget blueprint]`

---


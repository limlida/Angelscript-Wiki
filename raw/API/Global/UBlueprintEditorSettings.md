### UBlueprintEditorSettings


**属性**:

- `TArray<FAdditionalBlueprintCategory> AdditionalBlueprintCategories [List of additional category names to show in Blueprints, optionally filtered by parent class type.]`
- `EFiBIndexAllPermission AllowIndexAllBlueprints [Whether to enable the "Index All" action in the Find-in-Blueprints search window when blueprint assets with an out-of-date index (search metadata) are found and whether to allow automatic resaving. WARNING: Only allow "Index All" if your project is small enough that all assets can be loaded in memory at once. Only enable saving if you are allowed to potentially checkout and resave all assets.]`
- `TArray<TSoftClassPtr<UObject>> BaseClassesToDisallowRecompilingDuringPlayInEditor [Any blueprint deriving from one of these base classes will be disallowed to recompile during Play-in-Editor
(This setting exists both as an editor preference and project setting, and will be allowed if listed in either place)]`
- `EBlueprintBreakpointReloadMethod BreakpointReloadMethod [How to handle previously-set breakpoints on reload.]`
- `int ContextMenuTimeSlicingThresholdMs [The maximum amount of time (in milliseconds) allowed per frame for Blueprint graph context menu building when the non-blocking option is enabled. Larger values will complete the menu build in fewer frames, but will also make the UI feel less responsive. Smaller values will make the UI feel more responsive, but will also take longer to fully populate the menu.]`
- `TArray<FString> NamespacesToAlwaysInclude [A list of namespace identifiers that the Blueprint editor should always import by default. Requires Blueprint namespace features to be enabled and only applies to the current local user. Editing this list will also cause any visible Blueprint editor windows to be closed.]`
- `float32 NodeTemplateCacheCapMB [The node template cache is used to speed up blueprint menuing. This determines the peak data size for that cache.]`
- `ESaveOnCompile SaveOnCompile [Determines when to save Blueprints post-compile]`
- `TSet<FName> TypePromotionPinDenyList [If a pin type is within this list, then it will never be marked as a possible promotable function.]`
- `bool bAllowExplicitImpureNodeDisabling [If enabled, nodes can be explicitly disabled via context menu when right-clicking on impure nodes in the Blueprint editor. Disabled nodes will not be compiled, but also will not break existing connections.]`
- `bool bAutoCastObjectConnections [If enabled, then you'll be able to directly connect arbitrary object pins together (a pure cast node will be injected automatically).]`
- `bool bBlueprintNodeUniqueNames [If enabled, blueprint nodes in the event graph will display with unique names rather than their display name.]`
- `bool bCompactCallOnMemberNodes [If enabled, then call-on-member actions will be spawned as a single node (instead of a GetMember + FunctionCall node).]`
- `bool bDoNotMarkAllInstancesDirtyOnDefaultValueChange [If enabled, assets containing Blueprint instances (e.g. maps) will not be marked dirty when default values are edited, unless it results in the instance becoming realigned with the new default value.]`
- `bool bDoubleClickNavigatesToParent [Double click to navigate up to the parent graph]`
- `bool bDrawMidpointArrowsInBlueprints [Should arrows indicating data/execution flow be drawn halfway along wires?]`
- `bool bEnableContextMenuTimeSlicing [When the Blueprint graph context menu is invoked (e.g. by right-clicking in the graph or dragging off a pin), do not block the UI while populating the available actions list.]`
- `bool bEnableInputTriggerSupportWarnings [If enabled Input Action nodes will hide unsupported trigger pins and give warnings when using unsupported triggers.
This warning only works with triggers set up in an Input Action, not Input Mapping Contexts.]`
- `bool bEnableNamespaceEditorFeatures [Whether to enable namespace importing and filtering features in the Blueprint editor]`
- `bool bEnablePinValueInspectionTooltips [If enabled, pin tooltips during PIE will be interactive]`
- `bool bEnableTypePromotion [Allows for pin types to be promoted to others, i.e. float to double]`
- `bool bExposeAllMemberComponentFunctions [If enabled, then ALL component functions are exposed to the context menu (when the contextual target is a component owner). Ignores "ExposeFunctionCategories" metadata for components.]`
- `bool bExposeDeprecatedFunctions [If enabled, deprecated functions will be visible in the context menu and will be available for override implementation. By default, functions marked as deprecated are not exposed in either case.]`
- `bool bFavorPureCastNodes [If enabled, then placed cast nodes will default to their "pure" form (meaning: without execution pins).]`
- `bool bFlattenFavoritesMenus [If enabled, then your Blueprint favorites will be uncategorized, leaving you with less nested categories to sort through.]`
- `bool bHideConstructionScriptComponentsInDetailsView [If set will exclude components added in a Blueprint class Construction Script from the component details view]`
- `bool bHideUnrelatedNodes [If true, fade nodes which are not connected to the selected nodes]`
- `bool bIncludeActionsForSelectedAssetsInContextMenu [If enabled, invoking the Blueprint graph context menu with one or more compatible assets selected in the Content Browser will generate an additional set of pre-bound menu actions when the "Context Sensitive" option is enabled. For example, selecting a Static Mesh asset in the Content Browser will result in an extra "Add Static Mesh Component" menu action that's already bound to the selected asset.]`
- `bool bJumpToNodeErrors [When enabled, if a blueprint has compiler errors, then the graph will jump and focus on the first node generating an error]`
- `bool bLimitAssetActionBindingToSingleSelectionOnly [Only generate pre-bound "Add Component" actions when there is a single asset selected in the Content Browser. If more than one asset is selected, pre-bound "Add Component" actions will not be generated. Enabling this option can improve UI responsiveness and decrease the time it takes to build the context menu, while still preserving the ability to include actions pre-bound to the selected asset.]`
- `bool bLoadSelectedAssetsForContextMenuActionBinding [When generating pre-bound "Add Component" actions, any selected assets that are not yet loaded will be synchronously loaded as part of building the Blueprint Graph context menu. Enabling this option will ensure that all pre-bound actions for all selected assets are included in the menu, but load times may also affect editor UI responsiveness while the context menu is building.]`
- `bool bNavigateToNativeFunctionsFromCallNodes [If set, double clicking on a call function node will attempt to navigate an open C++ editor to the native source definition]`
- `bool bSearchForReferencesWhenVariableTypeChanged [If true we'll automatically search for references to a variable when its type is changed]`
- `bool bShowActionMenuItemSignatures [If enabled, tooltips on action menu items will show the associated action's signature id (can be used to setup custom favorites menus).]`
- `bool bShowContextualFavorites [If enabled, then a separate section with your Blueprint favorites will be pined to the top of the context menu.]`
- `bool bShowFunctionLocalVariableIcon [If true, show an icon next to function local variable nodes.]`
- `bool bShowFunctionParameterIcon [If true, show an icon next to function parameter nodes.]`
- `bool bShowGraphInstructionText [Determines if lightweight tutorial text shows up at the top of empty blueprint graphs]`
- `bool bShowPanelContextMenuForIncompatibleConnections [When enabled the the list of compatible nodes will be shown when a connection is attempted between incompatible pins]`
- `bool bShowShortTooltips [If true, use short tooltips whenever possible]`
- `bool bShowViewportOnSimulate [If true will show the viewport tab when simulate is clicked.]`
- `bool bSpawnDefaultBlueprintNodes [If set will spawn default "ghost" event nodes in new Blueprints, modifiable in the [DefaultEventNodes] section of EditorPerProjectUserSettings]`
- `bool bSplitContextTargetSettings [If enabled, we'll save off your chosen target setting based off of the context (allowing you to have different preferences based off what you're operating on).]`

---


### UBlueprintEditorProjectSettings


**属性**:

- `TArray<TSoftClassPtr<UObject>> BaseClassesToDisallowRecompilingDuringPlayInEditor [Any blueprint deriving from one of these base classes will be disallowed to recompile during Play-in-Editor
(This setting exists both as an editor preference and project setting, and will be allowed if listed in either place)]`
- `EChildActorComponentTreeViewVisualizationMode DefaultChildActorTreeViewMode [Default view mode to use for child actor components in a Blueprint actor's component tree hierarchy (experimental).]`
- `TArray<FName> DisabledCompilerMessages [List of compiler messages that have been suppressed completely - message suppression is only
advisable when using blueprints that you cannot update and are raising innocuous warnings.
If useless messages are being raised prefer to contact support rather than disabling messages]`
- `TArray<FName> DisabledCompilerMessagesExceptEditor [List of compiler messages that have been suppressed outside of full, interactive editor sessions for
the current project - useful for silencing warnings that were added to the engine after
project inception and are going to be addressed as they are found by content authors]`
- `TArray<FString> NamespacesToAlwaysInclude [A list of namespace identifiers that all Blueprint assets in the project should import by default. Requires Blueprint namespace features to be enabled in editor preferences. Editing this list will also cause any visible Blueprint editor windows to be closed.]`
- `TArray<FString> SuppressedDeprecationMessages [List of deprecated UProperties/UFunctions to suppress warning messages for - useful for source changes
that would otherwise cause content warnings
The easiest way to populate this list is using the context menu on nodes with deprecated references]`
- `bool bAllowImpureToPureNodeConversion [In Blueprint graphs, allows conversion of impure nodes to pure ones.
While this allows full flexibility of graph node visualization, this could potentially introduce unwanted performance hits.
Specifically, pure nodes are evaluated for each connected output. If an expensive function node were converted to pure, the user
might not realize that there's now added overhead.]`
- `bool bEnableChildActorExpansionInTreeView [Enable the option to expand child actor components within component tree views (experimental).]`
- `bool bValidateUnloadedSoftActorReferences [If enabled, the editor will load packages to look for soft references to actors when deleting/renaming them. This can be slow in large projects so disable this to improve performance but increase the chance of breaking blueprints/sequences that use soft actor references]`

---


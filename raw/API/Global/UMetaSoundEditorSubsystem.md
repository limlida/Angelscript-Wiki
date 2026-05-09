### UMetaSoundEditorSubsystem


The subsystem in charge of editor MetaSound functionality

**方法**:

- `UMetaSoundEditorBuilderListener AddBuilderDelegateListener(UMetaSoundBuilderBase InBuilder, EMetaSoundBuilderResult& OutResult)`  
  Add a builder listener for a builder which is used to add and remove custom editor builder delegates.
- `UMetaSoundFrontendMemberMetadata FindOrCreateGraphInputMetadata(UMetaSoundBuilderBase InBuilder, FName InputName, EMetaSoundBuilderResult& OutResult)`  
  Find graph input metadata (which includes editor only range information for floats) for a given input. If the metadata does not exist, create it.
- `SetFocusedPage(UMetaSoundBuilderBase Builder, FName PageName, bool bOpenEditor, EMetaSoundBuilderResult& OutResult) const`  
  If the given page name is implemented on the provided builder, sets the focused page of
the provided builder to the associated page and sets the audition page to
the provided name. If the given builder has an asset editor open, optionally opens or brings
that editor's associated PageID into user focus.
- `SetNodeLocation(UMetaSoundBuilderBase InBuilder, FMetaSoundNodeHandle InNode, FVector2D InLocation, EMetaSoundBuilderResult& OutResult)`  
  Sets the visual location to InLocation of a given node InNode of a given builder's document.

---


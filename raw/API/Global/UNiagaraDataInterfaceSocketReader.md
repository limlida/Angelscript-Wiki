### UNiagaraDataInterfaceSocketReader


Data interface for reading sockets from various sources.
This can be from a live component in the scene or from a static / skeletal mesh asset.

**属性**:

- `UClass AttachComponentClass [When looking for an attached parent component only accept this type of component.]`
- `FName AttachComponentTag [When looking for an attached parent component it must have this tag to be considered.]`
- `TSoftObjectPtr<UObject> EditorPreviewAsset [When previewing in the editor this is the asset to use to gather the socket information.]`
- `TArray<FName> FilteredSockets [List of filtered sockets.]`
- `FNiagaraUserParameterBinding ObjectParameterBinding [Source object parameter binding.
Note: Source Mode impacts the order of operations.]`
- `UObject SourceAsset [Source object asset to read sockets from, the transsform for these would be in relation to the Niagara system.]`
- `ENDISocketReaderSourceMode SourceMode [Controls how we find the object we want to read sockets from.]`
- `bool bRequireCurrentFrameData [When this option is disabled, we use the previous frame's data for the skeletal mesh and can often issue the simulation early. This greatly
      reduces overhead and allows the game thread to run faster, but comes at a tradeoff if the dependencies might leave gaps or other visual artifacts.]`
- `bool bUpdateSocketsPerFrame [When enabled we will read update the sockets transforms each frame.
This is not required in all cases as the sockets might not be able to move.]`

---


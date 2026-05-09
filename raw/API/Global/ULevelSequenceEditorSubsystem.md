### ULevelSequenceEditorSubsystem


ULevelSequenceEditorSubsystem
Subsystem for level sequence editor related utilities to scripts

**方法**:

- `TArray<FMovieSceneBindingProxy> AddActors(TArray<AActor> Actors)`  
  Add existing actors to Sequencer. Tracks will be automatically added based on default track settings.
- `AddActorsToBinding(TArray<AActor> Actors, FMovieSceneBindingProxy ObjectBinding)`  
  Assigns the given actors to the binding
- `FMovieSceneBindingProxy AddSpawnableFromClass(UMovieSceneSequence Sequence, UClass ClassToSpawn)`  
  Add a new binding to this sequence that will spawn the specified class.
- `FMovieSceneBindingProxy AddSpawnableFromInstance(UMovieSceneSequence Sequence, UObject ObjectToSpawn)`  
  Add a new binding to this sequence that will spawn the specified object.
- `bool BakeTransformWithSettings(TArray<FMovieSceneBindingProxy> ObjectBindings, FBakingAnimationKeySettings InSettings, FMovieSceneScriptingParams Params)`  
  Bake transform
- `bool ChangeActorTemplateClass(FMovieSceneBindingProxy ObjectBinding, TSubclassOf<AActor> ActorClass)`  
  Sets the actor class for the spawnable or replaceable template, in the case those binding types support templates.
- `FMovieSceneBindingProxy ConvertToCustomBinding(FMovieSceneBindingProxy ObjectBinding, TSubclassOf<UMovieSceneCustomBinding> BindingType)`  
  Convert to a custom binding of the given binding type
- `FMovieSceneBindingProxy ConvertToPossessable(FMovieSceneBindingProxy ObjectBinding)`  
  Convert to possessable. If there are multiple objects assigned to the spawnable.
- `TArray<FMovieSceneBindingProxy> ConvertToSpawnable(FMovieSceneBindingProxy ObjectBinding)`  
  Convert to spawnable. If there are multiple objects assigned to the possessable, multiple spawnables will be created.
For level sequences, the bindings created will be custom bindings of type UMovieSceneSpawnableActorBinding.
- `CopyBindings(TArray<FMovieSceneBindingProxy> Bindings, FString& ExportedText)`  
  Copy bindings
The copied bindings will be saved to the clipboard as well as assigned to the ExportedText string.
The ExportedTest string can be used in conjunction with PasteBindings if, for example, pasting copy/pasting multiple
bindings without relying on a single clipboard.
- `CopyFolders(TArray<UMovieSceneFolder> Folders, FString& FoldersExportedText, FString& ObjectsExportedText, FString& TracksExportedText)`  
  Copy folders
The copied folders will be saved to the clipboard as well as assigned to the ExportedText string.
The ExportedTest string can be used in conjunction with PasteFolders if, for example, pasting copy/pasting multiple
folders without relying on a single clipboard.
- `CopySections(TArray<UMovieSceneSection> Sections, FString& ExportedText)`  
  Copy sections
The copied sections will be saved to the clipboard as well as assigned to the ExportedText string.
The ExportedTest string can be used in conjunction with PasteSections if, for example, pasting copy/pasting multiple
sections without relying on a single clipboard.
- `CopyTracks(TArray<UMovieSceneTrack> Tracks, FString& ExportedText)`  
  Copy tracks
The copied tracks will be saved to the clipboard as well as assigned to the ExportedText string.
The ExportedTest string can be used in conjunction with PasteTracks if, for example, pasting copy/pasting multiple
tracks without relying on a single clipboard.
- `FMovieSceneBindingProxy CreateCamera(bool bSpawnable, ACineCameraActor& OutActor)`  
  Create a cine camera actor and add it to Sequencer
- `FixActorReferences()`  
  Attempts to automatically fix up broken actor references in the current scene
- `USequencerCurveEditorObject GetCurveEditor()`  
  Retrieve the curve editor
- `TArray<UMovieSceneCustomBinding> GetCustomBindingObjects(FMovieSceneBindingProxy ObjectBinding)`  
  In the case that the given binding proxy holds custom bindings, returns an array of the binding objects so properties can be accessed.
- `TArray<FMovieSceneBindingProxy> GetCustomBindingsOfType(TSubclassOf<UMovieSceneCustomBinding> CustomBindingType)`  
  Returns all of the bindings in the sequence of the given custom type.
- `TSubclassOf<UMovieSceneCustomBinding> GetCustomBindingType(FMovieSceneBindingProxy ObjectBinding)`  
  Returns the custom binding type for the given binding, or nullptr for possessables
- `USequencerModuleScriptingLayer GetScriptingLayer()`  
  Retrieve the scripting layer
- `bool PasteBindings(FString TextToImport, FMovieScenePasteBindingsParams PasteBindingsParams, TArray<FMovieSceneBindingProxy>& OutObjectBindings)`  
  Paste bindings
Paste bindings from the given TextToImport string (used in conjunction with CopyBindings).
If TextToImport is empty, the contents of the clipboard will be used.
- `bool PasteFolders(FString TextToImport, FMovieScenePasteFoldersParams PasteFoldersParams, TArray<UMovieSceneFolder>& OutFolders)`  
  Paste folders
Paste folders from the given TextToImport string (used in conjunction with CopyFolders).
If TextToImport is empty, the contents of the clipboard will be used.
- `bool PasteSections(FString TextToImport, FMovieScenePasteSectionsParams PasteSectionsParams, TArray<UMovieSceneSection>& OutSections)`  
  Paste sections
Paste sections from the given TextToImport string (used in conjunction with CopySections).
If TextToImport is empty, the contents of the clipboard will be used.
- `bool PasteTracks(FString TextToImport, FMovieScenePasteTracksParams PasteTracksParams, TArray<UMovieSceneTrack>& OutTracks)`  
  Paste tracks
Paste tracks from the given TextToImport string (used in conjunction with CopyTracks).
If TextToImport is empty, the contents of the clipboard will be used.
- `RebindComponent(TArray<FMovieSceneBindingProxy> ComponentBindings, FName ComponentName)`  
  Rebind the component binding to the requested component
- `RemoveActorsFromBinding(TArray<AActor> Actors, FMovieSceneBindingProxy ObjectBinding)`  
  Removes the given actors from the binding
- `RemoveAllBindings(FMovieSceneBindingProxy ObjectBinding)`  
  Remove all bound actors from this track
- `RemoveInvalidBindings(FMovieSceneBindingProxy ObjectBinding)`  
  Remove missing objects bound to this track
- `ReplaceBindingWithActors(TArray<AActor> Actors, FMovieSceneBindingProxy ObjectBinding)`  
  Replaces the binding with the given actors
- `SaveDefaultSpawnableState(FMovieSceneBindingProxy ObjectBinding)`  
  Save the default state of the spawnable.
- `SnapSectionsToTimelineUsingSourceTimecode(TArray<UMovieSceneSection> Sections)`  
  Snap sections to timeline using source timecode
- `SyncSectionsUsingSourceTimecode(TArray<UMovieSceneSection> Sections)`  
  Sync section using source timecode

---


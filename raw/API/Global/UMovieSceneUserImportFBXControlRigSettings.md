### UMovieSceneUserImportFBXControlRigSettings


**属性**:

- `TArray<FControlToTransformMappings> ControlChannelMappings [Mappings for how Control Rig Control Attributes Map to the incoming Transforms]`
- `FFrameNumber EndTimeRange [End Time Range To Import]`
- `TArray<FControlFindReplaceString> FindAndReplaceStrings [Strings In Imported Node To Find And Replace]`
- `float32 ImportUniformScale [Import Uniform Scale]`
- `FFrameNumber StartTimeRange [Start Time Range To Import]`
- `FFrameNumber TimeToInsertOrReplaceAnimation [Time that we insert or replace the imported animation]`
- `bool bConvertSceneUnit [Convert the scene from FBX unit to UE unit(centimeter)]`
- `bool bForceFrontXAxis [Convert the scene from FBX coordinate system to UE coordinate system with front X axis instead of -Y]`
- `bool bImportOntoSelectedControls [Whether or not import onto selected controls or all controls]`
- `bool bInsertAnimation [Whether or not we insert or replace, by default we insert]`
- `bool bSpecifyTimeRange [Whether to import over specific Time Range]`
- `bool bStripNamespace [Will strip any namespace from the FBX node names]`


**方法**:

- `LoadControlMappingsFromPreset(bool bMetaHumanPreset)`  
  Load the default or metahuman preset into the current mappings

---


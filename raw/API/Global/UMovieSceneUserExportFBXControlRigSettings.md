### UMovieSceneUserExportFBXControlRigSettings


**属性**:

- `TArray<FControlToTransformMappings> ControlChannelMappings [Mappings for how Control Rig Control Attributes Map to the incoming Transforms]`
- `FString ExportFileName [Imported File Name]`
- `EFbxExportCompatibility FbxExportCompatibility [This will set the fbx sdk compatibility when exporting to fbx file. The default value is 2013]`
- `bool bASCII [If enabled, save as ascii instead of binary]`
- `bool bExportLocalTime [If enabled, export sequencer animation in its local time, relative to its sequence.]`
- `bool bExportOnlySelectedControls [Whether or not import onto selected controls or all controls]`
- `bool bForceFrontXAxis [Convert the scene from FBX coordinate system to UE coordinate system with front X axis instead of -Y]`


**方法**:

- `LoadControlMappingsFromPreset(bool bMetaHumanPreset)`  
  Load the default or metahuman preset into the current mappings

---


### UInterchangePipelineBase


Pipeline implementation:

1. ExecutePipeline - Create the factory nodes from the translated nodes. This is where the logic is execute to create the unreal asset via the factory node. Called after the translation
2. ExecutePostFactoryPipeline - Called after the factory has create the unreal asset with the associate factory node, but before calling PostEditChange.
3. ExecutePostImportPipeline - Called after the asset PostEditChange is done. If the asset use the async build framework, the asset build should be completed.
4. ExecutePostBroadcastPipeline - Called after the asset was registered to the registry manager and all broadcast calls have been done.

**方法**:

- `bool DoesPropertyStatesExist(FName PropertyPath) const`  
  Return true if the property has valid states, or false if no states were set for the property.
- `FInterchangePipelinePropertyStates& FindOrAddPropertyStates(FName PropertyPath)`  
  Return a mutable property states reference. Add the property states if it doesn't exist.
- `GetSupportAssetClasses(TArray<UClass>& PipelineSupportAssetClasses) const`  
  Fill the list of all asset this pipeline can create
- `bool IsReimportContext()`
- `ScriptedExecuteExportPipeline(UInterchangeBaseNodeContainer BaseNodeContainer)`  
  Non-virtual helper that allows Blueprint to implement an event-based function.
The Interchange manager calls this function, not the virtual one that is called by the default implementation.
- `ScriptedExecutePipeline(UInterchangeBaseNodeContainer BaseNodeContainer, TArray<UInterchangeSourceData> SourceDatas, FString ContentBasePath)`  
  ScriptedExecutePipeline, is call after the translation and before we parse the graph to call the factory.
This is where factory node should be created by the pipeline.
Each factory node represent an unreal asset create that will be create by an interchange factory.
@note - the FTaskPipeline is calling this function not the virtual one that is call by the default implementation.
- `ScriptedExecutePostBroadcastPipeline(const UInterchangeBaseNodeContainer BaseNodeContainer, FString FactoryNodeKey, UObject CreatedAsset, bool bIsAReimport)`  
  ScriptedExecutePostBroadcastPipeline is called after an asset is completely imported and the broadcast have been called.
This can be useful if you need to unload the asset for any reason (Level reference by level instance need to be unload).
@note - the FTaskCompletion_GameThread calls this function not the virtual one that is call by the default implementation.
- `ScriptedExecutePostFactoryPipeline(const UInterchangeBaseNodeContainer BaseNodeContainer, FString FactoryNodeKey, UObject CreatedAsset, bool bIsAReimport)`  
  ScriptedExecutePostFactoryPipeline is called after the factory creates an Unreal asset, but before it calls PostEditChange.
@note - The FTaskPreCompletion task calls this function, not the virtual one that is called by the default implementation.
- `ScriptedExecutePostImportPipeline(const UInterchangeBaseNodeContainer BaseNodeContainer, FString FactoryNodeKey, UObject CreatedAsset, bool bIsAReimport)`  
  ScriptedExecutePostImportPipeline is called after an asset is completely imported, after PostEditChange has already been called.
This can be useful if you need build data for one asset to finish setting up another asset.
@example - A PhysicsAsset needs skeletal mesh render data to be built properly.
@note - the FTaskPostImport calls this function not the virtual one that is call by the default implementation.
- `FString ScriptedGetPipelineDisplayName() const`  
  This function is call when we want to list pipeline in the import dialog. If not override the default behavior of this function will search if
the pipeline have a FString UPROPERTY named "PipelineDisplayName" and return the property value. If there is no FString UPROPERTY call "PipelineDisplayName" it will
return the name of the pipeline asset (UObject::GetName).

When creating a pipeline (c++, python or blueprint) you can simply add a UPROPERTY name "PipelineDisplayName" to your pipeline, you do not need to override the function.
Use the same category has your other options and put it on the top.
The meta tag StandAlonePipelineProperty will hide your PROPERTY if your pipeline is a sub object of another pipeline when showing the import dialog.
The meta tag PipelineInternalEditionData make sure the property will be show only when we edit the pipeline object (hidden when showing the import dialog).


UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Textures", meta = (StandAlonePipelineProperty = "True", PipelineInternalEditionData = "True"))
FString PipelineDisplayName;
- `ScriptedSetReimportSourceIndex(UClass ReimportObjectClass, int SourceFileIndex)`  
  Non-virtual helper that allows Blueprint to implement an event-based function.
the Interchange framework calls this function, not the virtual one that is called by the default implementation.
- `bool SupportReimport() const`  
  * If this returns true, this pipeline will be saved in the asset import data.
* We will reuse this pipeline when reimporting the asset.
* If false, it's probably a debug helper pipeline that we do not want to save into assets.

---


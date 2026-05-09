### FBuildPromotionImportWorkflowSettings


Holds settings for the import workflow stage of the build promotion test

**属性**:

- `FEditorImportWorkflowDefinition Animation [Import settings for the animation asset.  (Will automatically use the skeleton of the skeletal mesh above)]`
- `FEditorImportWorkflowDefinition BlendShapeMesh [Import settings for the blend shape]`
- `FEditorImportWorkflowDefinition Diffuse [Import settings for the Diffuse texture]`
- `FEditorImportWorkflowDefinition MorphMesh [Import settings for the morph mesh]`
- `FEditorImportWorkflowDefinition Normal [Import settings for the Normalmap texture]`
- `TArray<FEditorImportWorkflowDefinition> OtherAssetsToImport [Import settings for any other assets you may want to import]`
- `FEditorImportWorkflowDefinition ReimportStaticMesh [Import settings for the static mesh to re-import]`
- `FEditorImportWorkflowDefinition SkeletalMesh [Import settings for the skeletal mesh]`
- `FEditorImportWorkflowDefinition Sound [Import settings for the sound]`
- `FEditorImportWorkflowDefinition StaticMesh [Import settings for the static mesh]`
- `FEditorImportWorkflowDefinition SurroundSound [Import settings for the surround sound (Select any of the channels.  It will auto import the rest)]`


**方法**:

- `FBuildPromotionImportWorkflowSettings& opAssign(FBuildPromotionImportWorkflowSettings Other)`

---


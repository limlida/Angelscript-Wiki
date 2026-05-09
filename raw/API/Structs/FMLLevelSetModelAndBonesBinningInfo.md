### FMLLevelSetModelAndBonesBinningInfo


**属性**:

- `FString ActiveBoneNames [The bones that are trained for deformation. We suggest only train one bone per MLLevelSet for efficiency]`
- `TArray<int> DebugGridResolution [Resolution of the Grid that is used for debug visualization]`
- `FString MLModelInferenceForIncorrectZoneInfoDataTableIndex [The index of the DataTable that includes information about NNE Model for incorrect (safe-danger) zone. If uninitialized, this means no safe zone is used.]`
- `FString MLModelInferenceInfoDataTableIndex [The index of the DataTable that includes information about NNE Model for signed distance]`
- `FString MLModelInferenceInfoDataTablePath [The path to the DataTable that includes information about NNE Model]`
- `TArray<int> NumberOfRotationComponentsPerBone [E.g. Use {1,2} if ActiveBone1 has one and ActiveBone2 has two active rotations.]`
- `FString ParentBoneName [The bone that MLLevelSet is attached to. Note that the deformations near this joint is not trained]`
- `TArray<float> ReferenceBoneRotations [Reference Rotations for the Active Bones.]`
- `TArray<float> ReferenceBoneTranslations [Reference Translations for the Active Bones.]`
- `TArray<int> RotationComponentIndexes [The indices of the rotation components. E.g. use {1,1,2} if ActiveBone1 uses Rot.Y and ActiveBone2 uses Rot.Y and Rot.Z.]`
- `float SignedDistanceScaling [Usually MLModels for SDF are trained so that output lies in [-1,1]. To do so the SignedDistances (in the dataset) are divided by SignedDistanceScaling.
      SignedDistanceScaling is generally defined to be the max length of the training bounding box.]`
- `TArray<float32> TrainingGridAxisX [First Edge of the bounding box that MLLevelSet is trained on.]`
- `TArray<float32> TrainingGridAxisY [Second Edge of the bounding box that MLLevelSet is trained on.]`
- `TArray<float32> TrainingGridAxisZ [Third Edge of the bounding box that MLLevelSet is trained on.]`
- `TArray<float32> TrainingGridOrigin [Min Corner of bounding box that MLLevelSet is trained on.]`


**方法**:

- `FMLLevelSetModelAndBonesBinningInfo& opAssign(FMLLevelSetModelAndBonesBinningInfo Other)`

---


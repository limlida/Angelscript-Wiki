### UPoseSearchDatabase


A data asset for indexing a collection of animation sequences.

**属性**:

- `FFloatInterval AdditionalExtrapolationTime [extrapolation of animation assets will be clamped by AnimationAssetTimeStart + AdditionalExtrapolationTime.Min, AnimationAssetTimeEnd + AdditionalExtrapolationTime.Max]`
- `float32 BaseCostBias [Base Cost added or removed to all poses from this database. It can be overridden by Anim Notify: Pose Search Modify Cost at the frame level of animation data.
Negative values make it more likely to be picked, or stayed in, Positive values make it less likely to be picked or stay in.]`
- `float32 ContinuingInteractionCostBias [Cost added to poses from this database (if setup with UMultiAnimAsset assets in "interaction mode") as continuation of a previous interaction.
This allows users to apply a cost bias (positive or negative) to poses following up an interaction.
This is useful to help the system stay in one animation segment longer, or shorter depending on how you set this bias.
Negative values make it more likely to be picked, or stayed in, positive values make it less likely to be picked or stay in.
Note: excluded from DDC hash, since used only at runtime]`
- `float32 ContinuingPoseCostBias [Cost added to the continuing pose from this database. This allows users to apply a cost bias (positive or negative) to the continuing pose.
This is useful to help the system stay in one animation segment longer, or shorter depending on how you set this bias.
Negative values make it more likely to be picked, or stayed in, positive values make it less likely to be picked or stay in.
Note: excluded from DDC hash, since used only at runtime in SearchContinuingPose]`
- `FFloatInterval ExcludeFromDatabaseParameters [These settings allow users to trim the start and end of animations in the database to preserve start/end frames for blending, and prevent the system from selecting the very last frames before it blends out.
valid animation frames will be AnimationAssetTimeStart + ExcludeFromDatabaseParameters.Min, AnimationAssetTimeEnd + ExcludeFromDatabaseParameters.Max]`
- `int KDTreeMaxLeafSize []`
- `int KDTreeQueryNumNeighbors [@todo: rename to KNNQueryNumNeighbors to be usable with the VPTree as well
Out of a kdtree search, results will have only an approximate cost, so the database search will select the best “KDTree Query Num Neighbors” poses to perform the full cost analysis, and be able to elect the best pose.
Memory & Performance Optimization! If KDTreeQueryNumNeighbors is 1 all the SearchIndexPrivate::Values will be stripped away, and the search will exclusively rely on the KDTree query result from the PCA space encoded values (SearchIndexPrivate::PCAValues).]`
- `int KDTreeQueryNumNeighborsWithDuplicates [@todo: rename to KNNQueryNumNeighborsWithDuplicates to be usable with the VPTree as well
if PCAValuesPruningSimilarityThreshold > 0 the kdtree will remove duplicates, every result out of the KDTreeQueryNumNeighbors could potentially references multiple poses.
KDTreeQueryNumNeighborsWithDuplicates is the upper bound number of poses the system will perform the full cost evaluation. if KDTreeQueryNumNeighborsWithDuplicates is zero then there's no upper bound]`
- `float32 LoopingCostBias [Cost added to all looping animation assets in this database. This allows users to make it more or less likely to pick the looping animation segments.
Negative values make it more likely to be picked, or stayed in, Positive values make it less likely to be picked or stay in.]`
- `const UPoseSearchNormalizationSet NormalizationSet [This optional asset defines a list of databases you want to normalize together. Without it, it would be difficult to compare costs from separately normalized databases containing different types of animation,
like only idles versus only runs animations, given that the range of movement would be dramatically different.]`
- `int NumberOfPrincipalComponents [Number of dimensions used to create the kdtree. More dimensions allows a better explanation of the variance of the dataset that usually translates in better search results, but will imply more memory usage and worse performances.]`
- `float32 PCAValuesPruningSimilarityThreshold [if two PCA values (multi dimensional point with the GetNumberOfPrincipalComponents cardinality) are closer than PCAValuesPruningSimilarityThreshold,
only one will be saved into the database FSearchIndex (to save memory).]`
- `float32 PosePruningSimilarityThreshold [if two poses values (multi dimensional point with the schema cardinality) are closer than PosePruningSimilarityThreshold,
only one will be saved into the database FSearchIndexBase (to save memory) and accessed by the two different pose indexes]`
- `EPoseSearchMode PoseSearchMode [This dictates how the database will perform the search.]`
- `USkeletalMesh PreviewMesh [If null, the default preview mesh for the skeleton will be used. Otherwise, this will be used in preview scenes.
@todo: Move this to be a setting in the Pose Search Database editor.]`
- `const UPoseSearchSchema Schema [The Schema sets what channels this database will use to match against (bones, trajectory and what properties of those you’re interested in, such as position and velocity).]`
- `TArray<FName> Tags [Array of tags that can be used as metadata.]`


**方法**:

- `UObject GetAnimationAsset(int Index) const`
- `int GetNumAnimationAssets() const`

---


### UPoseSearchSchema


Specifies the format of a pose search index. At runtime, queries are built according to the schema for searching.

**属性**:

- `TArray<TObjectPtr<UPoseSearchFeatureChannel>> Channels [Channels itemize the cost breakdown of the Schema in simpler parts such as position or velocity of a bones, or phase of limbs. The total cost of a query against an indexed database pose will be the sum of the combined channel costs]`
- `EPoseSearchDataPreprocessor DataPreprocessor [Type of operation performed to the full pose features dataset]`
- `int NumberOfPermutations [How many times the animation assets of the database using this schema will be indexed.]`
- `int PermutationsSampleRate [Delta time between every permutation indexing.]`
- `float32 PermutationsTimeOffset [Starting offset of the "PermutationTime" from the "SamplingTime" of the first permutation.
subsequent permutations will have PermutationTime = SamplingTime + PermutationsTimeOffset + PermutationIndex / PermutationsSampleRate.]`
- `int SampleRate [The update rate at which we sample the animation data in the database. The higher the SampleRate the more refined your searches will be, but the more memory will be required]`
- `TArray<FPoseSearchRoledSkeleton> Skeletons []`
- `bool bAddDataPadding [if true a padding channel will be added to make sure the data is 16 bytes (aligned) and padded, to facilitate performance improvements at cost of eventual additional memory]`
- `bool bDrawInjectAdditionalDebugChannels [if bDrawInjectAdditionalDebugChannels is true, all the channels added for debug purposes with
bInjectAdditionalDebugChannels (as well as all those channels with an associated zero weight) will be drawn]`
- `bool bInjectAdditionalDebugChannels [If bInjectAdditionalDebugChannels is true, channels will be asked to inject additional channels into this schema.
the original intent is to add UPoseSearchFeatureChannel_Position(s) to help with the complexity of the debug drawing
(the database will have all the necessary positions to draw lines at the right location and time).]`

---


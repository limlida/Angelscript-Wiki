### UGeometryCollection


UGeometryCollectionObject (UObject)

UObject wrapper for the FGeometryCollection

**属性**:

- `UAssetImportData AssetImportData [Importing data and options used for this geometry collection]`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `TArray<FGeometryCollectionAutoInstanceMesh> AutoInstanceMeshes [List of unique static mesh / materials pairs for auto instancing.]`
- `EClusterConnectionTypeEnum ClusterConnectionType []`
- `int ClusterGroupIndex [Cluster group index - Geometry Collections using the same index will simulate as one single cluster.]`
- `float32 ConnectionGraphBoundsFilteringMargin []`
- `UClass CustomRendererType [Custom class type that will be used to render the geometry collection instead of using the native rendering.]`
- `EDamageModelTypeEnum DamageModel [Damage model to use for evaluating destruction.]`
- `FGeometryCollectionDamagePropagationData DamagePropagationData [Data about how damage propagation shoudl behave.]`
- `TArray<float32> DamageThreshold [Damage threshold for clusters at different levels.]`
- `UDataflow DataflowAsset [this is deprecated data replaced with Setter and Getter but it is exposed to blueprint
so we use the Setter/Getter to make sure the blueprint will use them]`
- `FDataflowInstance DataflowInstance []`
- `TArray<FGeometryCollectionEmbeddedExemplar> EmbeddedGeometryExemplar [References for embedded geometry generation]`
- `bool EnableClustering []`
- `bool EnableNanite [Enable support for Nanite.]`
- `TArray<FGeometryCollectionSource> GeometrySource`
- `float32 Mass [Total Mass of Collection. If density, units are in kg/m^3 ( only enabled if physics material is not set )]`
- `TArray<TObjectPtr<UMaterialInterface>> Materials []`
- `int MaxClusterLevel [Maximum level for cluster breaks.]`
- `FVector2D MaximumSleepTime [How long may the particle sleep before initiating removal (in seconds).]`
- `float32 MinimumMassClamp [Smallest allowable mass (def:0.1)]`
- `uint NaniteMinimumResidencyInKB [How much of the nanite resource should always be resident (In KB). Approximate due to paging. 0: Minimum size (single page). MAX_uint32: Entire mesh.]`
- `TMap<FString,FString> Overrides`
- `bool PerClusterOnlyDamageThreshold [compatibility check, when true, only cluster compute damage from parameters and propagate to direct children
when false, each child will compute it's damage threshold allowing for more precise and intuitive destruction behavior]`
- `UPhysicalMaterial PhysicsMaterial [Physics material to use for the geometry collection]`
- `FVector2D RemovalDuration [How long does the removal process take (in seconds).]`
- `FGeometryCollectionProxyMeshData RootProxyData [Static mesh to use as a proxy for rendering until the geometry collection is broken.]`
- `TArray<FGeometryCollectionSizeSpecificData> SizeSpecificData [* Size Specfic Data reflects the default geometry to bind to rigid bodies smaller
* than the max size volume. This can also be empty to reflect no collision geometry
* for the collection.]`
- `float32 SlowMovingVelocityThreshold [When slow moving detection is on, this defines the linear velocity thresholds in cm/s to consider the object as sleeping .]`
- `UThumbnailInfo ThumbnailInfo [Information for thumbnail rendering]`
- `bool bAutomaticCrumblePartialClusters [When using remove on sleep , automatically crumble partial cluster into smaller pieces when possible]`
- `bool bConvertVertexColorsToSRGB [Convert vertex colors to sRGB for rendering. Exposed to avoid changing vertex color rendering for legacy assets; should typically be true for new geometry collections.]`
- `bool bDensityFromPhysicsMaterial [Whether to use density ( for mass computation ) from physics material ( if physics material is not set, use the component one or defaults )]`
- `bool bEnableNaniteFallback [Enable Non-Nanite fallback mesh when Nanite support is enabled.]`
- `bool bImportCollisionFromSource [whether to import collision from the source asset]`
- `bool bMassAsDensity [Mass As Density, units are in kg/m^3 ( only enabled if physics material is not set )]`
- `bool bOptimizeConvexes [whether to optimize convexes for collisions. If true the convex optimizer will generate at runtime one
single convex shape for physics collisions ignoring all the user defined ones.
Enable p.Chaos.Convex.SimplifyUnion cvar to be able to use it (experimental)]`
- `bool bRemoveOnMaxSleep [Remove particle from simulation and dissolve rendered geometry once sleep threshold has been exceeded.]`
- `bool bScaleOnRemoval [When enabled, particle will scale down (shrink) when using being removed ( using both remove on sleep or remove on break ) - Enabled by default]`
- `bool bSlowMovingAsSleeping [when on non-sleeping, slow moving pieces will be considered as sleeping, this helps removal of jittery but not really moving objects.]`
- `bool bStripOnCook [Strip unnecessary data from the Geometry Collection to keep the memory footprint as small as possible.]`
- `bool bStripRenderDataOnCook [Strip unnecessary render data from the Geometry Collection to keep the memory footprint as small as possible.
This may be used if the cooked build uses a custom renderer such as the ISMPool renderer.]`
- `bool bUseFullPrecisionUVs [Whether to use full precision UVs when rendering this geometry. (Does not apply to Nanite rendering)]`
- `bool bUseMaterialDamageModifiers [When on , use the modifiers on the material to adjust the user defined damage threshold values]`
- `bool bUseSizeSpecificDamageThreshold [whether to use size specific damage threshold instead of level based ones ( see Size Specific Data array ).]`


**方法**:

- `UDataflow GetDataflowAsset() const`
- `SetConvertVertexColorsToSRGB(bool bValue)`
- `SetDataflowAsset(UDataflow InDataflowAsset)`
- `SetEnableNanite(bool bValue)`

---


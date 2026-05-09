### FLightmassDebugOptions


Debug options for Lightmass

**属性**:

- `float32 CoplanarTolerance [The tolerance level used when gathering BSP surfaces.]`
- `float32 ExecutionTimeDivisor [The amount of time that will be count as full red when bColorByExecutionTime is enabled]`
- `bool bColorBordersGreen [If true, a green border will be placed around the edges of mappings]`
- `bool bColorByExecutionTime [If true, Lightmass will overwrite lightmap data with a shade of red relating to
how long it took to calculate the mapping (Red = Time / ExecutionTimeDivisor)]`
- `bool bDebugMaterials [If true, Lightmass will write out BMPs for each generated material property
sample to <GAME>\ScreenShots\Materials.]`
- `bool bDebugMode [If false, UnrealLightmass.exe is launched automatically (default)
If true, it must be launched manually (e.g. through a debugger) with the -debug command line parameter.]`
- `bool bDebugPaddings [If true, will fill padding of mappings with a color rather than the sampled edges.
Means nothing if bPadMappings is not enabled...]`
- `bool bDumpBinaryFiles [If true, the generate coefficients will be dumped to binary files.]`
- `bool bGatherBSPSurfacesAcrossComponents [If true, BSP surfaces split across model components are joined into 1 mapping]`
- `bool bImmediateProcessMappings [If true, Lightmass will process appropriate mappings as they are imported.
NOTE: Requires ImmediateMode be enabled to actually work.]`
- `bool bOnlyCalcDebugTexelMappings [If true, only the mapping containing a debug texel will be calculated, all others
will be set to white]`
- `bool bPadMappings [If true, Lightmass will pad the calculated mappings to reduce/eliminate seams.]`
- `bool bSortMappings [If true, Lightmass will sort mappings by texel cost.]`
- `bool bStatsEnabled [If true, all participating Lightmass agents will report back detailed stats to the log.]`
- `bool bUseImmediateImport [If true, Lightmass will import mappings immediately as they complete.
It will not process them, however.]`
- `bool bUseRandomColors [If true, color lightmaps a random color]`


**方法**:

- `FLightmassDebugOptions& opAssign(FLightmassDebugOptions Other)`

---


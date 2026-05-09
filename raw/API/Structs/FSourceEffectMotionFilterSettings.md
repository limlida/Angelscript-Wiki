### FSourceEffectMotionFilterSettings


FSourceEffectMotionFilterSettings
This is the source effect's setting struct.

**属性**:

- `float32 DryVolumeDb [Dry volume pass-through in dB.]`
- `FSourceEffectIndividualFilterSettings FilterASettings [Initial settings for Filter A]`
- `FSourceEffectIndividualFilterSettings FilterBSettings [Initial settings for Filter B]`
- `TMap<ESourceEffectMotionFilterModDestination,FSourceEffectMotionFilterModulationSettings> ModulationMappings [Modulation Mappings]`
- `float32 MotionFilterMix [Filter Mix controls the amount of each filter in the signal where -1.0f outputs Only Filter A, 0.0f is an equal balance between Filter A and B, and 1.0f outputs only Filter B. How this blend works depends on the Topology.]`
- `ESourceEffectMotionFilterTopology MotionFilterTopology [In Serial Mode, Filter A will process then Filter B will process; in Parallel mode, Filter A and Filter B will process the dry input seprately, then be mixed together afterward.]`


**方法**:

- `FSourceEffectMotionFilterSettings& opAssign(FSourceEffectMotionFilterSettings Other)`

---


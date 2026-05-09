### UEnvQueryTest_Volume


**属性**:

- `TSubclassOf<AVolume> VolumeClass [If VolumeContext is null, AVolume Class will be used to populate a list of AVolume to test against]`
- `TSubclassOf<UEnvQueryContext> VolumeContext [Context that populates a list of Actors derived from AVolume to test against]`
- `bool bDoComplexVolumeTest [If bDoComplexVolumeTest is set, it will use a full volume physic test (not only a bounding box test)]`
- `bool bSkipTestIfNoVolumes [If no volumes are returned to evaluate the points against then just ignore the test rather than failing each item]`

---


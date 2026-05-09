### UProceduralFoliageSpawner


**属性**:

- `TArray<FFoliageTypeObject> FoliageTypes [The types of foliage to procedurally spawn.]`
- `float32 MinimumQuadTreeSize [Minimum size of the quad tree used during the simulation. Reduce if too many instances are in splittable leaf quads (as warned in the log).]`
- `int NumUniqueTiles [The number of unique tiles to generate. The final simulation is a procedurally determined combination of the various unique tiles.]`
- `TArray<TSoftObjectPtr<UMaterialInterface>> OverrideFoliageTerrainMaterials [Procedural foliage will only spawn on materials specified here. These are only used if 'Use Override Foliage Terrain Materials' is checked.]`
- `int RandomSeed [The seed used for generating the randomness of the simulation.]`
- `float32 TileSize [Length of the tile (in cm) along one axis. The total area of the tile will be TileSize*TileSize.]`
- `bool bUseOverrideFoliageTerrainMaterials [If checked, will override the default behavior of using the global foliage material list and instead use the Override Foliage Terrain Materials defined here.
If the override is used, you must manually provide ALL materials this procedural foliage spawner should spawn on top of.]`


**方法**:

- `Simulate(int NumSteps = - 1)`

---


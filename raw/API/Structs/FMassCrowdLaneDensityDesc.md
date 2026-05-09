### FMassCrowdLaneDensityDesc


Structure holding data to associate lane densities to
weights so lane selection at intersection could use that
to maintain overall density during the simulation

**属性**:

- `FColor RenderColor []`
- `FZoneGraphTag Tag [Tag representing the lane density.]`
- `float32 Weight [Weight associated to the current lane density.
This weight is used during lane selection at intersection
and the random selection will consider the weight of each
lane and the combined weight of all lanes.]`


**方法**:

- `FMassCrowdLaneDensityDesc& opAssign(FMassCrowdLaneDensityDesc Other)`

---


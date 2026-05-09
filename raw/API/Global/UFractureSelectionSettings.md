### UFractureSelectionSettings


Settings controlling how geometry is selected

**属性**:

- `float KeepFraction [Fraction of bones to keep in the selection: If less than 1, bones will be randomly excluded from the selection filter]`
- `float MaxVolume [Sets the maximum volume (as computed by the Volume Selection Method) that should be included in the filter]`
- `float MaxVolumeFrac [Sets the maximum volume (as computed by the Volume Selection Method) that should be included in the filter]`
- `float MinVolume [Sets the minimum volume (as computed by the Volume Selection Method) that should be included in the filter]`
- `float MinVolumeFrac [Sets the minimum volume (as computed by the Volume Selection Method) that should be included in the filter]`
- `EMouseSelectionMethod MouseSelectionMethod []`
- `int RandomSeed [Seed to use for randomization when deciding which bones to keep w/ the Keep Fraction]`
- `ESelectionOperation SelectionOperation [How to update the selection from the filter]`
- `EVolumeSelectionMethod VolumeSelectionMethod [What values to use when filtering by volume.  Note all values are presented as cube roots to give more intuitive scales (e.g., to select bones with volume less than a 10x10x10 cube, choose CubeRootOfVolume and MaxVolume=10, rather than needing to multiply out to 1000)]`

---


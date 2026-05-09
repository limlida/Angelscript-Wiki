### UHLODBuilderInstancingSettings


**属性**:

- `EInstanceFilteringType InstanceFilteringType [Type of filtering to apply to instances. Instances that do not pass the filter will be excluded from the HLOD.]`
- `float MinimumArea [Minimum area in square Unreal Units]`
- `float MinimumExtent [Minimum Extent in Unreal Units]`
- `float MinimumVolume [Minimum volume in cubic Unreal Units]`
- `bool bDisallowNanite [If enabled, the components created for the HLODs will not use Nanite.
Necessary if you want to use the last LOD & the mesh is Nanite enabled, as forced LODs are ignored by Nanite]`

---


### FMergeUVIslandsDataflowNode


Merge adjacent UV Islands with similar normals for a specific UV channel

**属性**:

- `float AreaDistortionThreshold [Threshold for allowed area distortion from merging islands (when we use ExpMap to compute new UVs for the merged island)]`
- `float MaxNormalDeviationDeg [Threshold for allowed normal deviation between merge-able islands]`
- `float NormalSmoothingAlpha [Strength of normal smoothing to apply when computing new UVs for merged islands. Stronger smoothing will result in UV maps that are less sensitive to local surface shape.]`
- `int NormalSmoothingRounds [Amount of normal smoothing to apply when computing new UVs for merged islands. More smoothing will result in UV maps that are less sensitive to local surface shape.]`
- `FLinearColor OverrideColor []`
- `int UVChannel [UV channel to unwrap into ( 0 by default )]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FMergeUVIslandsDataflowNode& opAssign(FMergeUVIslandsDataflowNode Other)`

---


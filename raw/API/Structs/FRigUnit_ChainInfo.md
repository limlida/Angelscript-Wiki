### FRigUnit_ChainInfo


* Retrieves various pieces of info about an interpolated transform hierarchy from an rig element item list

**属性**:

- `float32 ChainLength [* The length of the interpolated chain]`
- `float32 ChainStretchFactor [* Stretch factor of chain]`
- `float32 DebugScale [* Debug draw scale]`
- `FTransform InterpolatedTransform [* The interpolated transform at the chain's input parameter]`
- `TArray<FRigElementKey> Items [* The items to use to interpret the chain]`
- `float32 Param [* The parameter value down the chain of items from 0 to 1]`
- `float32 ParamLength [* The length of the interpolated chain]`
- `FRigUnit_ChainInfo_SegmentInfo SegmentInfo [* Segment Info]`
- `bool bCalculateStretch [* If True calculate stretch factors of chain and current segment]`
- `bool bDebug [* Enable debug draw for node]`
- `bool bInitial [* If True use initial transform values for chain]`


**方法**:

- `FRigUnit_ChainInfo& opAssign(FRigUnit_ChainInfo Other)`

---


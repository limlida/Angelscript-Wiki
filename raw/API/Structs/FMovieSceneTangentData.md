### FMovieSceneTangentData


Tangents for curve channel control points.

**属性**:

- `float32 ArriveTangent [If RCIM_Cubic, the arriving tangent at this key]`
- `float32 ArriveTangentWeight [If RCTWM_WeightedArrive or RCTWM_WeightedBoth, the weight of the left tangent]`
- `float32 LeaveTangent [If RCIM_Cubic, the leaving tangent at this key]`
- `float32 LeaveTangentWeight [If RCTWM_WeightedLeave or RCTWM_WeightedBoth, the weight of the right tangent]`
- `ERichCurveTangentWeightMode TangentWeightMode [If RCIM_Cubic, the tangent weight mode]`


**方法**:

- `FMovieSceneTangentData& opAssign(FMovieSceneTangentData Other)`

---


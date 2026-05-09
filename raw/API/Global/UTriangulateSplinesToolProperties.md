### UTriangulateSplinesToolProperties


Parameters for controlling the spline triangulation

**属性**:

- `ECombineCurvesMethod CombineMethod [Whether or how to combine the curves]`
- `float CurveOffset [How much offset to apply to curves]`
- `EOpenCurveEndShapes EndShapes [The shape of the ends of offset curves]`
- `float ErrorTolerance [How far to allow the triangulation boundary can deviate from the spline curve before we add more vertices]`
- `EFlattenCurveMethod FlattenMethod [Whether and how to flatten the curves. If curves are flattened, they can also be offset and combined]`
- `EOffsetJoinMethod JoinMethod [The shape of joins between segments of an offset curve]`
- `float MiterLimit [How far a miter join can extend before it is replaced by a square join]`
- `EOffsetClosedCurvesMethod OffsetClosedCurves [Whether and how to apply offset to closed curves]`
- `EOffsetOpenCurvesMethod OpenCurves [How to handle open curves: Either offset them, or treat them as closed curves]`
- `float Thickness [If > 0, Extrude the triangulation by this amount]`
- `bool bFlipResult [Whether to flip the facing direction of the generated mesh]`

---


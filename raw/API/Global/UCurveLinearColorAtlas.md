### UCurveLinearColorAtlas


Manages gradient LUT textures for registered actors and assigns them to the corresponding materials on the actor

**属性**:

- `TArray<TObjectPtr<UCurveLinearColor>> GradientCurves [Width of the lookup textures]`
- `uint TextureSize []`
- `bool bDisableAllAdjustments [Disable all color adjustments to preserve negative values in curves. Color adjustments clamp to 0 when enabled.]`


**方法**:

- `bool GetCurvePosition(UCurveLinearColor InCurve, float32& Position)`

---


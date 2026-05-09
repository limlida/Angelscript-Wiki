### UCurveLinearColor


**属性**:

- `float32 AdjustBrightness []`
- `float32 AdjustBrightnessCurve []`
- `float32 AdjustHue [Properties for adjusting the color of the gradient]`
- `float32 AdjustMaxAlpha []`
- `float32 AdjustMinAlpha []`
- `float32 AdjustSaturation []`
- `float32 AdjustVibrance []`
- `FRichCurve FloatCurves [Keyframe data, one curve for red, green, blue, and alpha]`


**方法**:

- `FLinearColor GetClampedLinearColorValue(float32 InTime) const`  
  GetClampedLinearColorValue always clamps RGB in [0,1] , eg. returns LDR colors
- `FLinearColor GetLinearColorValue(float32 InTime) const`  
  GetLinearColorValue allows RGB > 1 for HDR
       if the input curves are LDR (<= 1) then the output is clamped to stay LDR, even if Adjustments would have changed it
- `FLinearColor GetUnadjustedLinearColorValue(float32 InTime) const`  
  GetUnadjustedLinearColorValue returns the raw curve values without color adjustments
      also does NOT clamp in [0,1] , beware how the RGBA is used, you may want clamping, at least >= 0

---


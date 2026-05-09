### UWindDirectionalSourceComponent


Component that provides a directional wind source. Only affects SpeedTree assets.

**属性**:

- `float32 MaxGustAmount`
- `float32 MinGustAmount`
- `float32 Radius`
- `float32 Speed`
- `float32 Strength`
- `bool bPointWind`


**方法**:

- `SetMaximumGustAmount(float32 InNewMaxGust)`  
  Set maximum deviation for wind gusts
- `SetMinimumGustAmount(float32 InNewMinGust)`  
  Set minimum deviation for wind gusts
- `SetRadius(float32 InNewRadius)`  
  Set the effect radius for point wind
- `SetSpeed(float32 InNewSpeed)`  
  Sets the windspeed of the generated wind
- `SetStrength(float32 InNewStrength)`  
  Sets the strength of the generated wind
- `SetWindType(EWindSourceType InNewType)`  
  Set the type of wind generator to use

---


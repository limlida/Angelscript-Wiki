### UWaveScalar


Set a temporal wave scalar value according to the sample distance from the field position.

**属性**:

- `EFieldFalloffType Falloff [Type of falloff function used if the falloff function is picked]`
- `EWaveFunctionType Function [Wave function used for the field]`
- `float32 Magnitude [Magnitude of the wave function]`
- `float32 Period [Time over which the wave will travel from one peak to another one. The wave velocity is proportional to wavelength/period]`
- `FVector Position [Center position of the wave field]`
- `float32 Wavelength [Distance between 2 wave peaks]`


**方法**:

- `UWaveScalar SetWaveScalar(float32 Magnitude, FVector Position, float32 Wavelength, float32 Period, float32 Time, EWaveFunctionType Function, EFieldFalloffType Falloff)`  
  Set a temporal wave scalar value according to the sample distance from the field position.
@param    Magnitude Magnitude of the wave function
@param    Position Center position of the wave field
@param    Wavelength Distance between 2 wave peaks
@param    Period Time over which the wave will travel from one peak to another one. The wave velocity is proportional to wavelength/period
@param    Function Wave function used for the field
@param    Falloff Type of falloff function used if the falloff function is picked

---


### URadialVector


Set a radial vector value, the direction being the vector from the sample position to the field one. The output is equal to magnitude * direction

**属性**:

- `float32 Magnitude [Magnitude of the radial vector field]`
- `FVector Position [Center position of the radial vector field]`


**方法**:

- `URadialVector SetRadialVector(float32 Magnitude, FVector Position)`  
  Set a radial vector value. The direction is the normalized vector from the field position to the sample one. The output is equal to this direction * magnitude.
@param    Magnitude Magnitude of the radial vector field
@param    Position Center position of the radial vector field

---


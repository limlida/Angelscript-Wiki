### URadialFalloff


Sphere scalar field that will be defined only within a sphere

**属性**:

- `float32 Default [The field value will be set to Default if the sample distance from the center is higher than the radius]`
- `EFieldFalloffType Falloff [Type of falloff function used to model the evolution of the field from the sphere center to the sample position]`
- `float32 Magnitude [Magnitude of the sphere falloff field]`
- `float32 MaxRange [The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude]`
- `float32 MinRange [The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude]`
- `FVector Position [Center position of the sphere falloff field]`
- `float32 Radius [Radius of the sphere falloff field]`


**方法**:

- `URadialFalloff SetRadialFalloff(float32 Magnitude, float32 MinRange, float32 MaxRange, float32 Default, float32 Radius, FVector Position, EFieldFalloffType Falloff)`  
  Sphere scalar field that will be defined only within a sphere
@param    Magnitude Magnitude of the sphere falloff field
@param    MinRange The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude
@param    MaxRange The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude
@param    Default The field value will be set to Default if the sample distance from the center is higher than the radius
@param    Radius Radius of the sphere falloff field
@param    Position Center position of the sphere falloff field
@param    Falloff Type of falloff function used if the falloff function is picked

---


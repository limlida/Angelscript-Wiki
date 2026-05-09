### UNoiseField


Defines a perlin noise scalar value if the sample is within a box

**属性**:

- `float32 MaxRange [The initial function value between 0 and 1 will be scaled between MinRange and MaxRange]`
- `float32 MinRange [The initial function value between 0 and 1 will be scaled between MinRange and MaxRange]`
- `FTransform Transform [Transform of the box in which the perlin noise will be defined]`


**方法**:

- `UNoiseField SetNoiseField(float32 MinRange, float32 MaxRange, FTransform Transform)`  
  Defines a perlin noise scalar value if the sample is within a box
@param    MinRange The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude
@param    MaxRange The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude
@param    Transform Transform of the box in which the perlin noise will be defined

---


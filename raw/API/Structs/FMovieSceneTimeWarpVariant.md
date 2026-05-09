### FMovieSceneTimeWarpVariant


Numeric variant type that represents a 'time-warp' operation transforming a time into another time.

By default this variant is a literal value that represents a play rate of 1.0 (ie, a 1:1 mapping), but it can be customized
to provide a wide range of different transformations such as looping, clamping and custom curves

**方法**:

- `SetFixedPlayRate(float FixedPlayRate)`  
  Assign a constant playrate to this timewarp, overwriting any existing timewarp implementation.
- `float ToFixedPlayRate() const`  
  Retrieve this timewarp's constant play rate. Will throw an error if the timewarp is not a constant play rate.
- `FMovieSceneTimeWarpVariant& opAssign(FMovieSceneTimeWarpVariant Other)`

---


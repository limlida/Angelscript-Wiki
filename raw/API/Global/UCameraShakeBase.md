### UCameraShakeBase


Base class for a camera shake. A camera shake contains a root shake "pattern" which is
the object that contains the actual logic driving how the camera is shaken. Keeping the two
separate makes it possible to completely change how a shake works without having to create
a completely different asset.

**属性**:

- `UCameraShakePattern RootShakePattern [The root pattern for this camera shake]`
- `float32 ShakeScale [The overall scale to apply to the shake. Only valid when the shake is active.]`
- `bool bSingleInstance [If true to only allow a single instance of this shake class to play at any given time.
Subsequent attempts to play this shake will simply restart the timer.]`


**方法**:

- `UCameraShakePattern GetRootShakePattern() const`  
  Gets the root pattern of this camera shake
- `SetRootShakePattern(UCameraShakePattern InPattern)`  
  Sets the root pattern of this camera shake

---


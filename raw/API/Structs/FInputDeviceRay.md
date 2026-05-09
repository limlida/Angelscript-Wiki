### FInputDeviceRay


FInputDeviceRay represents a 3D ray created based on an input device.
If the device is a 2D input device like a mouse, then the ray may
have an associated 2D screen position.

**属性**:

- `FVector2D ScreenPosition [2D device position coordinates associated with the ray]`
- `FRay WorldRay [3D ray in 3D scene, in world coordinates]`
- `bool bHas2D [If true, WorldRay has 2D device position coordinates]`


**方法**:

- `FInputDeviceRay& opAssign(FInputDeviceRay Other)`

---


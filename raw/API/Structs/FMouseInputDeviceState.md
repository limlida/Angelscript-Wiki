### FMouseInputDeviceState


Current State of a physical Mouse device at a point in time.

**属性**:

- `FVector2D Delta2D [Change in 2D mouse position from last state event]`
- `FDeviceButtonState Left [State of the left mouse button]`
- `FDeviceButtonState Middle [State of the middle mouse button]`
- `FVector2D Position2D [Current 2D position of the mouse, in application-defined coordinate system]`
- `FDeviceButtonState Right [State of the right mouse button]`
- `float32 WheelDelta [Change in 'ticks' of the mouse wheel since last state event]`
- `FRay WorldRay [Ray into current 3D scene at current 2D mouse position]`


**方法**:

- `FMouseInputDeviceState& opAssign(FMouseInputDeviceState Other)`

---


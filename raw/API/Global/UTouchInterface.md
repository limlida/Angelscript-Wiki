### UTouchInterface


Defines an interface by which touch input can be controlled using any number of buttons and virtual joysticks

**属性**:

- `float32 ActivationDelay [How long after joystick enabled for touch (0.0 will disable this feature)]`
- `float32 ActiveOpacity [Opacity (0.0 - 1.0) of all controls while any control is active]`
- `TArray<FTouchInputControl> Controls []`
- `float32 InactiveOpacity [Opacity (0.0 - 1.0) of all controls while no controls are active]`
- `float32 StartupDelay [Delay at startup before virtual joystick is drawn]`
- `float32 TimeUntilDeactive [How long after user interaction will all controls fade out to Inactive Opacity]`
- `float32 TimeUntilReset [How long after going inactive will controls reset/recenter themselves (0.0 will disable this feature)]`
- `bool bPreventRecenter [Prevent joystick re-centering and moving from Center through user taps]`

---


### UInputAxisBinding2DCameraNode


An input node that reads player input from an input action and accumulates
it into a usable input value. Basically a Raw Input Axis Binding node combined
with an Input Accumulator node.

**属性**:

- `TArray<TObjectPtr<UInputAction>> AxisActions [The axis input action(s) to read from.]`
- `FVector2dCameraParameter Multiplier [A multiplier to use on the input values.]`
- `bool bIsAccumulated [Whether the player input is accumulated from frame to frame.]`

---


### FTouchInputControl


**属性**:

- `FKey AltInputKey [The alternate input to send from this control (for sticks, this is the vertical axis)]`
- `FVector2D Center [The initial center point of the control. If Time Until Reset is < 0, control resets back to here.
Use negative numbers to invert positioning from top to bottom, left to right. (if <= 1.0, it's relative to screen, > 1.0 is absolute)]`
- `UTexture2D Image1 [For sticks, this is the Thumb]`
- `UTexture2D Image2 [For sticks, this is the Background]`
- `FVector2D InputScale [The scale for control input]`
- `FVector2D InteractionSize [The interactive size of the control. Measured outward from Center. (if <= 1.0, it's relative to screen, > 1.0 is absolute)]`
- `FKey MainInputKey [The main input to send from this control (for sticks, this is the horizontal axis)]`
- `FVector2D ThumbSize [For sticks, the size of the thumb (if <= 1.0, it's relative to screen, > 1.0 is absolute)]`
- `FVector2D VisualSize [The size of the control (if <= 1.0, it's relative to screen, > 1.0 is absolute)]`
- `bool bTreatAsButton [Set this to true to treat the joystick as a simple button]`


**方法**:

- `FTouchInputControl& opAssign(FTouchInputControl Other)`

---


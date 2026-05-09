### FTapDelayInfo


**属性**:

- `float32 DelayLength [Amount of time before this echo is heard in milliseconds.]`
- `float32 Gain [How loud this echo should be, in decibels.]`
- `int OutputChannel [When the Tap Line Mode is set to Send To Channel, designates index of channel from which the echo should play.]`
- `float32 PanInDegrees [When the Tap Line Mode is set to Panning, designates the angle at which the echo should be panned.
On Surround systems, 0 is directly in front of the listener, -90 is left, 90 is right, and 180/-180 is directly behind the listener.
On Stereo systems, <-90 is fully in the left ear, and >90 is fully in the right ear]`
- `ETapLineMode TapLineMode [Whether the tap line should send directly to a channel, pan, or not produce sound at all.]`


**方法**:

- `FTapDelayInfo& opAssign(FTapDelayInfo Other)`

---


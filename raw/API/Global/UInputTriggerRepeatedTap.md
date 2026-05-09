### UInputTriggerRepeatedTap


Fires the "Triggered" event upon a repeated taps of a key.

Note: You can use this trigger to easily make a "Double Tap" effect.

**属性**:

- `int NumberOfTapsWhichTriggerRepeat [The number of taps in a row it takes for this to be considered triggered.

Note: To create a "Double tap" trigger, this value should be 2.]`
- `float RepeatDelay [The max amount of time which can pass in between single taps that can pass and still be considered
a repeat tap. For example:

-> Single Key Tap (the first tap)
--
-- ... Some time passes
--
-> Another single key tap (the second tap)

-- if (time passed <= RepeatDelay) then trigger repeat tap]`
- `float32 TapReleaseTimeThreshold [Release within this time-frame to trigger a tap]`

---


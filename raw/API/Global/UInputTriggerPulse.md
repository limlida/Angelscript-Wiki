### UInputTriggerPulse


UInputTriggerPulse
      Trigger that fires at an Interval, in seconds, while input is actuated.
      Note:   Completed only fires when the repeat limit is reached or when input is released immediately after being triggered.
                      Otherwise, Canceled is fired when input is released.

**属性**:

- `float32 Interval [How long between each trigger fire while input is held, in seconds?]`
- `int TriggerLimit [How many times can the trigger fire while input is held? (0 = no limit)]`
- `bool bTriggerOnStart [Whether to trigger when the input first exceeds the actuation threshold or wait for the first interval?]`

---


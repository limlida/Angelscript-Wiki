### UGenlockedFixedRateCustomTimeStep


Control the Engine TimeStep via a fixed frame rate.

Philosophy:

  * Quantized increments but keeping up with platform time.

  * FApp::GetDeltaTime
      - Forced to a multiple of the desired FrameTime.

  * FApp::GetCurrentTime
      - Incremented in multiples of the desired FrameTime.
      - Corresponds to platform time minus any fractional FrameTime.

**属性**:

- `FFrameRate FrameRate [Desired frame rate]`
- `bool bForceSingleFrameDeltaTime [When true, delta time will always be 1/FrameRate, regardless of how much real time has elapsed]`
- `bool bShouldBlock [Indicates that this custom time step should block to enforce the specified frame rate. Set to false if this is enforced elsewhere.]`

---


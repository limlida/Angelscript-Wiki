### FQuartzQuantizationBoundary


struct used to specify the quantization boundary of an event

**属性**:

- `EQuarztQuantizationReference CountingReferencePoint`
- `float32 Multiplier [how many "Resolutions" to wait before the onset we care about]`
- `EQuartzCommandQuantization Quantization [resolution we are interested in]`
- `bool bCancelCommandIfClockIsNotRunning [If this is true, this command will be canceled if the Clock is stopped or otherwise not running]`
- `bool bFireOnClockStart [If this is true and the Clock hasn't started yet, the event will fire immediately when the Clock starts]`
- `bool bResetClockOnQueued [If this is true, queueing the sound will also call a Reset Clock command]`
- `bool bResumeClockOnQueued [If this is true, queueing the sound will also call a Resume Clock command]`


**方法**:

- `FQuartzQuantizationBoundary& opAssign(FQuartzQuantizationBoundary Other)`

---


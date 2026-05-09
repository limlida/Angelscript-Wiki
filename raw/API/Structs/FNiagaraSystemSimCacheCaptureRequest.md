### FNiagaraSystemSimCacheCaptureRequest


Message sent from the debugger to a client to request a sim cache capture for a particular component.

**属性**:

- `uint CaptureDelayFrames [How many frames to delay capture.]`
- `uint CaptureFrames [How many frames to capture.]`
- `FName ComponentName [Name of the component we're going to capture.]`


**方法**:

- `FNiagaraSystemSimCacheCaptureRequest& opAssign(FNiagaraSystemSimCacheCaptureRequest Other)`

---


### UNiagaraDataInterfaceExport


This Data Interface can be used to gather particles at execution time and call either a
C++ or blueprint object with the gathered particle data each tick.

**属性**:

- `FNiagaraUserParameterBinding CallbackHandlerParameter [Reference to a user parameter that should receive the particle data after the simulation tick. The supplied parameter object needs to implement the INiagaraParticleCallbackHandler interface.]`
- `int GPUAllocationFixedSize [Reserve a fixed number of elements we can write per frame.  Once the limit is reached we ignore further writes.]`
- `ENDIExport_GPUAllocationMode GPUAllocationMode [Sets the allocation scheme for the number of elements we reserve for the GPU.  The number of elements reserved should be as low as possible to improve performance.]`
- `float32 GPUAllocationPerParticleSize [Uses the emitter property particle count * this to determine the number of elements we reserve for write per frame.  The console variable fx.Niagara.NDIExport.GPUMaxReadbackCount is used to cap the maximum.  Once the limit is reached we ignore further writes.]`

---


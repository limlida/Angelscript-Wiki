### UNiagaraDataInterfaceSimpleCounter


Thread safe counter starts at the initial value on start / reset.
When operating between CPU & GPU ensure you set the appropriate sync mode.

**属性**:

- `ENiagaraGpuSyncMode GpuSyncMode [Select how we should synchronize the counter between Cpu & Gpu]`
- `int InitialValue [This is the value the counter will have when the instance is reset / created.]`

---


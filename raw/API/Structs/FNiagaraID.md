### FNiagaraID


**属性**:

- `int AcquireTag [A unique tag for when this ID was acquired.
Allows us to differentiate between particles when one dies and another reuses it's Index.]`
- `int Index [Index in the indirection table for this particle. Allows fast access to this particles data.
Is always unique among currently living particles but will be reused after the particle dies.]`


**方法**:

- `FNiagaraID& opAssign(FNiagaraID Other)`

---


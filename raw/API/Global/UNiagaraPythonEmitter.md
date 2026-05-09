### UNiagaraPythonEmitter


Wrapper for an emitter stack.

**方法**:

- `UNiagaraPythonModule GetModule(FString ModuleName) const`  
  returns a module by name
- `TArray<UNiagaraPythonModule> GetModules() const`  
  returns a list of all modules contained in this emitter
- `UNiagaraEmitter GetObject()`  
  Returns the raw underlying object
- `FVersionedNiagaraEmitterData GetProperties() const`  
  returns the emitter properties, such as determinism or interpolated spawning
- `bool HasModule(FString ModuleName) const`  
  returns true if the emitter contains a certain module
- `SetProperties(FVersionedNiagaraEmitterData Data)`  
  sets the new emitter properties

---


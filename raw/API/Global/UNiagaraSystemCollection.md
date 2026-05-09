### UNiagaraSystemCollection


A collection of Niagara Systems.

**属性**:

- `FNiagaraSystemCollectionData SystemCollection []`
- `bool bLoadImmediately []`


**方法**:

- `TArray<UNiagaraSystem> GetSystems() const`  
  Returns the Systems as an array, Loading them if needed.
- `LoadAsync() const`  
  Triggers async loading of all systems in this collection.
- `LoadSynchronous() const`  
  Triggers synchronous (blocking) loading of all systems in this collection.
- `int Num() const`  
  The number of systems in this collection.
- `Release()`  
  Release any currently loaded Niagara Systems. Cancel any pending loads.

---


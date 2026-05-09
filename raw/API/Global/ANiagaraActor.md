### ANiagaraActor


Niagara Particle System Actor contains a Niagara Particle System Component which can be used to simulate and render Niagara Systems

@see https://dev.epicgames.com/documentation/en-us/unreal-engine/BlueprintAPI/NiagaraActor
@see UNiagaraComponent

**属性**:

- `UNiagaraComponent NiagaraComponent [Pointer to System component]`


**方法**:

- `bool GetDestroyOnSystemFinish() const`  
  Returns true if the system will destroy on finish
- `SetDestroyOnSystemFinish(bool bShouldDestroyOnSystemFinish)`  
  Set true for this actor to self-destruct when the Niagara system finishes, false otherwise

---


### FNiagaraDebuggerRequestConnection


Messaged broadcast from debugger to request a connection to a particular session.
If any matching client is found and it accepts, it will return a FNiagaraDebuggerAcceptConnection message to the sender.

**属性**:

- `FGuid InstanceId []`
- `FGuid SessionId []`


**方法**:

- `FNiagaraDebuggerRequestConnection& opAssign(FNiagaraDebuggerRequestConnection Other)`

---


### UNetworkPhysicsComponent


Network physics component to add to actors or pawns that control their physic simulation through applying inputs,
and should support networking through physics resimulation.

**方法**:

- `ServerReceiveDeltaSourceInputFrame(int Frame)`  
  Server RPC to acknowledge which Delta Source Input Frame the owning client has received
- `ServerReceiveDeltaSourceStateFrame(int Frame)`  
  Server RPC to acknowledge which Delta Source State Frame the owning client has received

---


### FRepMovement


Replicated movement data of our RootComponent.
Struct used for efficient replication as velocity and location are generally replicated together (this saves a repindex)
and velocity.Z is commonly zero (most position replications are for walking pawns).

**属性**:

- `EVectorQuantization LocationQuantizationLevel [Allows tuning the compression level for the replicated location vector. You should only need to change this from the default if you see visual artifacts.]`
- `ERotatorQuantization RotationQuantizationLevel [Allows tuning the compression level for replicated rotation. You should only need to change this from the default if you see visual artifacts.]`
- `EVectorQuantization VelocityQuantizationLevel [Allows tuning the compression level for the replicated velocity vectors. You should only need to change this from the default if you see visual artifacts.]`


**方法**:

- `FRepMovement& opAssign(FRepMovement Other)`

---


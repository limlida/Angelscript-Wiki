### FMovementSettingsInputs


Data block containing movement settings inputs that are networked from client to server.
This is useful if settings changes need to be predicted on the client and synced on the server.
Also supports rewind/resimulation of settings changes.

**属性**:

- `float32 Acceleration [Maximum acceleration in cm/s^2]`
- `float32 MaxSpeed [Maximum speed in cm/s]`


**方法**:

- `FMovementSettingsInputs& opAssign(FMovementSettingsInputs Other)`

---


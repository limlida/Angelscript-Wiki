### UNiagaraDataChannelReader


Initial simple API for reading and writing data in a data channel from game code / BP.
Likely to be replaced in the near future with a custom BP node and a helper struct.

**方法**:

- `int Num() const`
- `bool ReadBool(FName VarName, int Index, bool& IsValid) const`
- `uint8 ReadEnum(FName VarName, int Index, bool& IsValid) const`
- `float ReadFloat(FName VarName, int Index, bool& IsValid) const`
- `FNiagaraID ReadID(FName VarName, int Index, bool& IsValid) const`
- `int ReadInt(FName VarName, int Index, bool& IsValid) const`
- `FLinearColor ReadLinearColor(FName VarName, int Index, bool& IsValid) const`
- `FVector ReadPosition(FName VarName, int Index, bool& IsValid) const`
- `FQuat ReadQuat(FName VarName, int Index, bool& IsValid) const`
- `FNiagaraSpawnInfo ReadSpawnInfo(FName VarName, int Index, bool& IsValid) const`
- `FVector ReadVector(FName VarName, int Index, bool& IsValid) const`
- `FVector2D ReadVector2D(FName VarName, int Index, bool& IsValid) const`
- `FVector4 ReadVector4(FName VarName, int Index, bool& IsValid) const`

---


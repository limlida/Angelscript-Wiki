### FMoverDataCollection


Contains a group of different FMoverDataStructBase-derived data, and supports net serialization of them. Note that
      each contained data must have a unique type.  This is to support dynamic composition of Mover simulation model
 definitions (input cmd, sync state, aux state).

**方法**:

- `FCharacterDefaultInputs& GetCharacterDefaultInputs()`
- `FMoverTkCharacterDatas& GetMoverCharacterDatas()`
- `FMoverTkHorseDatas& GetMoverHorseDatas()`
- `FMoverDataCollection& opAssign(FMoverDataCollection Other)`

---


### FTimespan


A time span value, which is the difference between two dates and times.
@note The full C++ class is located here: Engine\Source\Runtime\Core\Public\Misc\Timespan.h

**方法**:

- `FTimespan opAdd(FTimespan Other) const`
- `FTimespan& opAddAssign(FTimespan Other)`
- `FTimespan opSub() const`
- `FTimespan opSub(FTimespan Other) const`
- `FTimespan& opSubAssign(FTimespan Other)`
- `FTimespan opMul(float Scalar) const`
- `FTimespan& opMulAssign(float Scalar)`
- `FTimespan opDiv(float Scalar) const`
- `FTimespan& opDivAssign(float Scalar)`
- `FTimespan opMod(FTimespan Other) const`
- `FTimespan& opModAssign(FTimespan Other)`
- `int opCmp(FTimespan Other) const`
- `bool opEquals(FTimespan Other) const`
- `int GetDays() const`
- `FTimespan GetDuration()`
- `int GetFractionMicro() const`
- `int GetFractionMilli() const`
- `int GetFractionNano() const`
- `int GetFractionTicks() const`
- `int GetHours() const`
- `int GetMinutes() const`
- `int GetSeconds() const`
- `int64 GetTicks() const`
- `float GetTotalDays() const`
- `float GetTotalHours() const`
- `float GetTotalMicroseconds() const`
- `float GetTotalMilliseconds() const`
- `float GetTotalMinutes() const`
- `float GetTotalSeconds() const`
- `bool IsZero() const`
- `FString ToString() const`
- `FString ToString(FString Format) const`
- `FTimespan& opAssign(FTimespan Other)`

---


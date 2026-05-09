### FDateTime


A value representing a specific point date and time over a wide range of years.
@note The full C++ class is located here: Engine\Source\Runtime\Core\Public\Misc\DateTime.h

**方法**:

- `bool opEquals(FDateTime Other) const`
- `FDateTime GetDate() const`
- `GetDate(int& OutYear, int& OutMonth, int& OutDay) const`
- `int GetDay() const`
- `int GetDayOfYear() const`
- `int GetHour() const`
- `int GetHour12() const`
- `int GetMillisecond() const`
- `int GetMinute() const`
- `int GetMonth() const`
- `int GetSecond() const`
- `int GetYear() const`
- `bool IsAfternoon() const`
- `bool IsMorning() const`
- `int64 ToUnixTimestamp() const`
- `FString ToHttpDate() const`
- `FString ToIso8601() const`
- `FString ToString(FString Format) const`
- `int64 GetTicks() const`
- `int opCmp(FDateTime Other) const`
- `FDateTime opAdd(FTimespan Other) const`
- `FDateTime& opAddAssign(FTimespan Other)`
- `FTimespan opSub(FDateTime Other) const`
- `FDateTime opSub(FTimespan Other) const`
- `FDateTime& opSubAssign(FTimespan Other)`
- `FString ToString() const`
- `FDateTime& opAssign(FDateTime Other)`

---


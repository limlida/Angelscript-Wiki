### FColor


Stores a color with 8 bits of precision per channel. (BGRA).
@note The full C++ class is located here: Engine\Source\Runtime\Core\Public\Math\Color.h

**属性**:

- `uint8 A`
- `uint8 B`
- `uint DWColor`
- `uint8 G`
- `uint8 R`


**方法**:

- `bool opEquals(FColor ColorB) const`
- `opAddAssign(FColor ColorB)`
- `FString ToHex() const`
- `bool InitFromString(FString SourceString)`
- `FLinearColor FromRGBE() const`
- `FLinearColor ReinterpretAsLinear() const`
- `FString ToString() const`
- `FColor& opAssign(FColor Other)`

---


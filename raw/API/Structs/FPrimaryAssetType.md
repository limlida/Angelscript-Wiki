### FPrimaryAssetType


A primary asset type, represented as an FName internally and implicitly convertible back and forth
This exists so the blueprint API can understand it's not a normal FName

**属性**:

- `FName Name [The FName representing this type]`


**方法**:

- `FName GetName() const`
- `bool IsValid() const`
- `bool opEquals(FPrimaryAssetType Other) const`
- `FString ToString() const`
- `FPrimaryAssetType& opAssign(FPrimaryAssetType Other)`

---


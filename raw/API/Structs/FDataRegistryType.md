### FDataRegistryType


Wrapper struct to represent a global data registry, represented as an FName internally and implicitly convertible back and forth.
This exists so the blueprint API can understand it's not a normal FName.

**属性**:

- `FName Name [The FName representing this type]`


**方法**:

- `FDataRegistryType& opAssign(FDataRegistryType Other)`

---


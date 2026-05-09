### FMetasoundCommentNodeIntVector


Migratory type to avoid adding dependency on Slate FDeprecateSlateVector2D, and by extension,
bring in unnecessary Engine dependencies therein.  At one point, this dependency was incorrectly
added leading to in-determinant serialization as either a double or a float vector. This type
exists to resolve that discrepancy properly. Considered soft deprecated and not to be used for runtime.

**属性**:

- `int X`
- `int Y`


**方法**:

- `FMetasoundCommentNodeIntVector& opAssign(FMetasoundCommentNodeIntVector Other)`

---


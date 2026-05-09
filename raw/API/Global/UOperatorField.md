### UOperatorField


Compute an operation between 2 incoming fields

**属性**:

- `const UFieldNodeBase LeftField [Left field to be processed]`
- `float32 Magnitude [Magnitude of the operator field]`
- `EFieldOperationType Operation [Type of operation you want to perform between the 2 fields]`
- `const UFieldNodeBase RightField [Right field to be processed]`


**方法**:

- `UOperatorField SetOperatorField(float32 Magnitude, const UFieldNodeBase LeftField, const UFieldNodeBase RightField, EFieldOperationType Operation)`  
  Compute an operation between 2 incoming fields
@param    Magnitude Magnitude of the operator field
@param    LeftField Input field A to be processed
@param    RightField Input field B to be processed
@param    Operation Type of math operation you want to perform between the 2 fields

---


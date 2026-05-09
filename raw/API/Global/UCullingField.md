### UCullingField


Evaluate the input field according to the result of the culling field

**属性**:

- `const UFieldNodeBase Culling [Culling field to be used]`
- `const UFieldNodeBase Field [Input field that will be evaluated according to the culling field result]`
- `EFieldCullingOperationType Operation [Evaluate the input field if the result of the culling field is equal to 0 (Inside) or different from 0 (Outside)]`


**方法**:

- `UCullingField SetCullingField(const UFieldNodeBase Culling, const UFieldNodeBase Field, EFieldCullingOperationType Operation)`  
  Evaluate the input field according to the result of the culling field.

@param    Culling Culling field to be used.
@param    Field Input field that will be evaluated according to the culling field result.
@param    Operation Evaluate the input field if the result of the culling field is equal to 0 (Inside) or different from 0 (Outside).

---


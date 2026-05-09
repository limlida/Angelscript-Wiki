### FMaterialAggregateAttribute


Represents a single attribute within a material aggregate.

**属性**:

- `UMaterialAggregate Aggregate [The nested aggregate reference, used only if TypeKind is Aggregate.]`
- `FVector4f DefaultValue [This attribute default value, assigned when the parent aggregate is constructed without an assignment to this attribute.]`
- `FName Name [The name of the attribute.]`
- `EMaterialAggregateAttributeType Type [The type of the attribute.]`


**方法**:

- `FMaterialAggregateAttribute& opAssign(FMaterialAggregateAttribute Other)`

---


### FWorldConditionQueryDefinition


Definition of a world condition.
The mutable state of the world condition is stored in FWorldConditionQueryState.
This allows to reuse the definitions and minimize the runtime memory needed to run queries.

**属性**:

- `TArray<FWorldConditionEditable> EditableConditions [Conditions used while editing, converted in to Conditions via Initialize().
Those will be cleared for cooked builds but can still be used by hotfixes.]`


**方法**:

- `FWorldConditionQueryDefinition& opAssign(FWorldConditionQueryDefinition Other)`

---


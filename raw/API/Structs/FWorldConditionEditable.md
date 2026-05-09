### FWorldConditionEditable


Struct used to store a world condition in editor or to apply hotfixes. Used internally.
Note that the Operator and ExpressionDepth are stored here separately from the World Condition to make sure they are not reset if the Condition is empty.

**属性**:

- `FInstancedStruct Condition [Instance of a world condition.]`
- `uint8 ExpressionDepth [Expression depth controlling the parenthesis of the expression.]`
- `EWorldConditionOperator Operator [Operator describing how the results of the condition is combined with other conditions.]`
- `bool bInvert [Controls whether the value of the expressions as calculated by IsTrue should be inverted.]`


**方法**:

- `FWorldConditionEditable& opAssign(FWorldConditionEditable Other)`

---


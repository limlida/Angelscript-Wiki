### FStateTreeStateLink


Link to another state in StateTree

**属性**:

- `FGuid ID [ID of the state linked to.]`
- `EStateTreeTransitionType LinkType [Type of the transition, used at edit time to describe e.g. next state (which is calculated at compile time).]`
- `FName Name [Name of the state at the time of linking, used for error reporting.]`


**方法**:

- `FStateTreeStateLink& opAssign(FStateTreeStateLink Other)`

---


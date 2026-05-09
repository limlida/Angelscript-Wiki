### FAngelscriptInputBindData


It's a shame we have to wrap. But it's not a hot path, and it's better than doing an engine mod. Best would of course be if AS type binds were made aware to UHT so binding worked here.

**属性**:

- `FName CancelTargetCommand [Defines command string that will be bound to Cancel Targeting]`
- `int CancelTargetInputID [If >=0, Cancel is bound to an entry in the enum]`
- `FName ConfirmTargetCommand [Defines command string that will be bound to Confirm Targeting]`
- `int ConfirmTargetInputID [If >=0, Confirm is bound to an entry in the enum]`
- `FTopLevelAssetPath EnumName [Returns enum to use for ability binds. E.g., "Ability1"-"Ability9" input commands will be bound to ability activations inside the AbiltiySystemComponent]`


**方法**:

- `FAngelscriptInputBindData& opAssign(FAngelscriptInputBindData Other)`

---


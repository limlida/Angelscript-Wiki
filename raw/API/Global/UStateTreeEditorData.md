### UStateTreeEditorData


Edit time data for StateTree asset. This data gets baked into runtime format before being used by the StateTreeInstance.

**属性**:

- `TSet<FStateTreeEditorColor> Colors [Color Options to assign to a State]`
- `TArray<FStateTreeEditorNode> Evaluators []`
- `TArray<TObjectPtr<UStateTreeEditorDataExtension>> Extensions [The editor data extensions. A place to add extra information for plugins.]`
- `TArray<FStateTreeEditorNode> GlobalTasks []`
- `EStateTreeTaskCompletionType GlobalTasksCompletion []`
- `FInstancedPropertyBag RootParameterPropertyBag [Public parameters property bag that could be used for bindings within the Tree.]`
- `UStateTreeSchema Schema [Schema describing which inputs, evaluators, and tasks a StateTree can contain.]`


**方法**:

- `UStateTreeEditorDataExtension GetExtension(TSubclassOf<UStateTreeEditorDataExtension> ExtensionType)`  
  Find the first extension of the requested type.

---


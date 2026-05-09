### UStateTreeState


Editor representation of a state in StateTree

**属性**:

- `FStateTreeEditorColorRef ColorRef [Display color of the State]`
- `TArray<FStateTreeEditorNode> Considerations [Expression of enter conditions that needs to evaluate true to allow the state to be selected.]`
- `float32 CustomTickRate [Tick rate in seconds the state tasks and transitions should tick.
If set the state cannot sleep.
If set all the other states (children or parents) will also tick at that rate.
If more than one active states has a custom tick rate then the smallest custom tick rate wins.
If not set, the state will tick every frame unless the state tree is allowed to sleep.]`
- `FString Description [Description of the State]`
- `TArray<FStateTreeEditorNode> EnterConditions [Expression of enter conditions that needs to evaluate true to allow the state to be selected.]`
- `FGuid ID []`
- `UStateTree LinkedAsset [Another State Tree asset to run as extension of this State.]`
- `FStateTreeStateLink LinkedSubtree [Subtree to run as extension of this State.]`
- `FName Name [Display name of the State]`
- `FStateTreeStateParameters Parameters [Parameters of this state. If the state is linked to another state or asset, the parameters are for the linked state.]`
- `FStateTreeEventDesc RequiredEventToEnter [Defines the event required to be present during state selection for the state to be selected.]`
- `EStateTreeStateSelectionBehavior SelectionBehavior [How to treat child states when this State is selected.]`
- `FStateTreeEditorNode SingleTask [Single item used when schema calls for single task per state.]`
- `FGameplayTag Tag [GameplayTag describing the State]`
- `TArray<FStateTreeEditorNode> Tasks []`
- `EStateTreeTaskCompletionType TasksCompletion [How tasks will complete the state. Only tasks that are considered for completion can complete the state.]`
- `TArray<FStateTreeTransition> Transitions []`
- `EStateTreeStateType Type [Type the State, allows e.g. states to be linked to other States.]`
- `float32 Weight [Weight used to scale the normalized final utility score for this state]`
- `bool bCheckPrerequisitesWhenActivatingChildDirectly [Should state's required event and enter conditions be evaluated when transition leads directly to it's child.]`
- `bool bEnabled []`
- `bool bHasCustomTickRate [Activate the CustomTickRate.]`
- `bool bHasRequiredEventToEnter []`

---


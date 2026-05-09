### FStateTreeTransitionResult


Describes a state tree transition. Source is the state where the transition started, Target describes the state where the transition pointed at,
and Next describes the selected state. The reason Transition and Next are different is that Transition state can be a selector state,
in which case the children will be visited until a leaf state is found, which will be the next state.

**属性**:

- `EStateTreeStateChangeType ChangeType [If the change type is Sustained, then the CurrentState was reselected, or if Changed then the state was just activated.]`
- `EStateTreeRunStatus CurrentRunStatus [Current Run status.]`
- `FStateTreeStateHandle CurrentState [The current state being executed. On enter/exit callbacks this is the state of the task.]`
- `EStateTreeTransitionPriority Priority [Priority of the transition that caused the state change.]`
- `FStateTreeStateHandle TargetState [Transition target state. It can be a completion state.]`


**方法**:

- `FStateTreeTransitionResult& opAssign(FStateTreeTransitionResult Other)`

---


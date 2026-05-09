### FComponentReference


Struct that allows for different ways to reference a component using TObjectPtr.
If just an Actor is specified, will return RootComponent of that Actor.

**属性**:

- `FName ComponentProperty [Name of component to use. If this is not specified the reference refers to the root component.]`
- `TWeakObjectPtr<AActor> OtherActor [Weak Pointer to a different Actor that owns the Component.
If this is not provided the reference refers to a component on this / the same actor.]`
- `FString PathToComponent [Path to the component from its owner actor]`


**方法**:

- `UActorComponent GetComponent(AActor OwningActor) const`
- `FComponentReference& opAssign(FComponentReference Other)`

---


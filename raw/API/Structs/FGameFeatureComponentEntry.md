### FGameFeatureComponentEntry


Description of a component to add to a type of actor when this game feature is enabled
(the actor class must be game feature aware, it does not happen magically)
@TODO: Write more documentation here about how to make an actor game feature / modular gameplay aware

**属性**:

- `TSoftClassPtr<AActor> ActorClass [The base actor class to add a component to]`
- `uint8 AdditionFlags [Observe these rules when adding the component, if any]`
- `TSoftClassPtr<UActorComponent> ComponentClass [The component class to add to the specified type of actor]`
- `bool bClientComponent [Should this component be added for clients]`
- `bool bServerComponent [Should this component be added on servers]`


**方法**:

- `FGameFeatureComponentEntry& opAssign(FGameFeatureComponentEntry Other)`

---


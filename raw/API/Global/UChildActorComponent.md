### UChildActorComponent


A component that spawns an Actor when registered, and destroys it when unregistered.

**属性**:

- `AActor ChildActor [The actor that we spawned and own]`
- `TSubclassOf<AActor> ChildActorClass [The class of Actor to spawn]`
- `bool bChildActorIsTransient [Should the spawned actor be marked as transient?
@note The spawned actor will also be marked transient if this component or its owner actor are transient, regardless of the state of this flag.]`
- `bool bSetOwner [Should the owner of this component be set as the owner of the child actor?]`


**方法**:

- `SetChildActorClass(TSubclassOf<AActor> InClass)`  
  Sets the class to use for the child actor.
If called on a template component (owned by a CDO), the properties of any existing child actor template will be copied as best possible to the template.
If called on a component instance in a world (and the class is changing), the created ChildActor will use the class defaults as template.
@param InClass The Actor subclass to spawn as a child actor

---


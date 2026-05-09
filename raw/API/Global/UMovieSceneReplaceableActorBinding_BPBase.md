### UMovieSceneReplaceableActorBinding_BPBase


Base class for Custom Replaceable Binding classes implemented by Blueprints

**属性**:

- `FText BindingTypePrettyName [Name to show in Sequencer for the custom binding type.]`
- `FText BindingTypeTooltip [Tooltip to show in Sequencer for the custom binding type.]`
- `int CustomBindingPriority [Priority with which to consider this binding type over others when considering binding an object to Sequencer.
As a guideline, a priority of BaseEnginePriority will ensure that engine types(such as Spawnable Actor, Replaceable Actor) will
be higher priority than your custom binding, and so your binding type will not automatically be created(but may be converted to manually).
A priority of BaseCustomPriority and higher will ensure that your binding type is considered more highly than engine types,
so if your binding type's 'SupportsBindingCreationFromObject' returns true for an object, your binding type will be created by default
rather than an engine type.]`
- `TSubclassOf<UMovieSceneSpawnableBindingBase> PreviewSpawnableType [Preview Spawnable Type to use for this replaceable]`


**方法**:

- `InitReplaceableBinding(UObject SourceObject, UMovieScene OwnerMovieScene)`  
  Called after binding creation to allow the replaceable to initialize any data members from the source object.
- `FMovieSceneBindingResolveResult ResolveRuntimeBinding(FMovieSceneBindingResolveContext ResolveContext) const`  
  * Must be implemented. Called during non-editor/runtime to resolve the binding dynamically. In editor worlds/Sequencer will instead use the PreviewSpawnable binding to spawn a preview object.
* If no object is returned, Sequencer's BindingOverrides can still be used to dynamically bind the object.
- `bool SupportsBindingCreationFromObject(const UObject SourceObject) const`  
  Called on the binding to determine whether this binding type supports creating a binding from the passed in object.

---


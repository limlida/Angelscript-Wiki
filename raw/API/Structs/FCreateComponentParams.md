### FCreateComponentParams


FCreateComponentParams is a collection of input data intended to be passed to
UModelingObjectsCreationAPI::CreateNewComponentOnActor().

**属性**:

- `FString BaseName [The base name of the new Component]`
- `UClass ComponentClass [A component class to instantiate a new component instance of.]`
- `AActor HostActor [An actor to host the new component]`
- `bool bSetAsRoot [If true, and if the component class is derived from USceneComponent, set this component as the root of the Actor.]`
- `bool bTransact [If true, wrap the creation operation in a transaction, and create the component with the RF_Transactional object flag set.]`


**方法**:

- `FCreateComponentParams& opAssign(FCreateComponentParams Other)`

---


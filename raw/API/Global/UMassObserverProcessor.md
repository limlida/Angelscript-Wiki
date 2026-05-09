### UMassObserverProcessor


Base class for Processors that are used as "observers" of entity operations.
An observer declares the type of Mass element it cares about (Fragments and Tags supported at the moment) - via
the ObservedType property - and the types of operations it wants to be notified of - via ObservedOperations.

When an observed operation takes place the processor's regular execution will take place, with
ExecutionContext's "auxiliary data" (obtained by calling GetAuxData) being filled with an instance of FMassObserverExecutionContext,
that can be used to get information about the type being handled and the kind of operation.

**属性**:

- `bool bAutoRegisterWithObserverRegistry []`

---


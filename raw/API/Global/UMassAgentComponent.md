### UMassAgentComponent


There are two primary use cases for this component:
1. If placed on an AActor blueprint it lets the user specify additional fragments that will be created for
   entities spawned based on this given blueprint.
2. If present on an actor in the world it makes it communicate with the MassSimulation which will create an
   entity representing given actor. Use case 1) will also be applicable in this case. The component is unregistered by
   default and requires manual enabling via a 'Enable' call.

@todo use case 2) is currently sitting in a shelved CL of mine. Will be worked on next.

**属性**:

- `FMassEntityConfig EntityConfig []`
- `bool bAutoRegisterInEditorMode`


**方法**:

- `Disable()`  
  Registers the component with the owner effectively turning it off
- `Enable()`  
  Registers the component with the owner effectively turning it on. Calling it multiple times won't break anything
- `KillEntity(bool bDestroyActor)`

---


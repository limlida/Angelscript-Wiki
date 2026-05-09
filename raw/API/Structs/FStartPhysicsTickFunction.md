### FStartPhysicsTickFunction


Tick function that starts the physics tick

**属性**:

- `ETickingGroup EndTickGroup [Defines the tick group that this tick function must finish in. These groups determine the relative order of when objects tick during a frame update.

@see ETickingGroup]`
- `ETickingGroup TickGroup [Defines the minimum tick group for this tick function. These groups determine the relative order of when objects tick during a frame update.
Given prerequisites, the tick may be delayed.

@see ETickingGroup
@see FTickFunction::AddPrerequisite()]`
- `float32 TickInterval [The frequency in seconds at which this tick function will be executed.  If less than or equal to 0 then it will tick every frame]`
- `bool bAllowTickOnDedicatedServer [If we allow this tick to run on a dedicated server]`
- `bool bStartWithTickEnabled [If true, this tick function will start enabled, but can be disabled later on.]`
- `bool bTickEvenWhenPaused [Bool indicating that this function should execute even if the game is paused. Pause ticks are very limited in capabilities. *]`

---


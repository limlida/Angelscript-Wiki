### FChaosPhysicsSettings


Settings container for Chaos physics engine settings, accessed in Chaos through a setting provider interface.
See: IChaosSettingsProvider

**属性**:

- `EChaosBufferMode DedicatedThreadBufferMode [The buffering mode to use when running with a dedicated thread]`
- `EChaosSolverTickMode DedicatedThreadTickMode [The framerate/timestep ticking mode when running with a dedicated thread]`
- `EChaosThreadingMode DefaultThreadingModel [Default threading model to use on module initialisation. Can be switched at runtime using p.Chaos.ThreadingModel]`


**方法**:

- `FChaosPhysicsSettings& opAssign(FChaosPhysicsSettings Other)`

---


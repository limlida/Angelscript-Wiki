### UMassProcessor


**属性**:

- `EActivationState ActivationState [Processors can be activated/deactivated at runtime. Deactivating a running processor will not disrupt the processing
graph since the disabled processor's dependencies will get passed down to the subsequent processors depending on this one.
Deactivating processor's CDO will result in every instance starting off as disabled. Those will still be considered
while building the processor dependency graph and one included in the processing graph will function just as the
processor instances disabled at runtime (i.e. won't run, but pass down their dependencies).
A special type of activation is "One Shot" mode - it works just like "Active" state, but it will auto-disable itself
upon completion of the next CallExecute call.]`
- `uint8 ExecutionFlags [Whether this processor should be executed on StandAlone or Server or Client]`
- `FMassProcessorExecutionOrder ExecutionOrder [Configures when this given processor can be executed in relation to other processors and processing groups, within its processing phase.]`
- `int16 ExecutionPriority [Denoted how important it is for this processor to be executed as soon as possible within a processing graph.
The larger the number the higher the priority. It's used in two ways:
- used when sorting nodes that otherwise seem similar in terms of "which processor to pick for execution next"
- affects the priority of the dependencies - if this super-important processor is waiting for processor A and B,
             then A and B become super important as well.]`
- `EMassProcessingPhase ProcessingPhase [Processing phase this processor will be automatically run as part of. Needs to be set before the processor gets
registered with MassProcessingPhaseManager, otherwise it will have no effect. This property is usually read via
a given class's CDO, so it's recommended to set it in the constructor.]`
- `bool bAutoRegisterWithProcessingPhases [Configures whether this processor should be automatically included in the global list of processors executed every tick (see ProcessingPhase and ExecutionOrder).]`
- `bool bRequiresGameThreadExecution`

---


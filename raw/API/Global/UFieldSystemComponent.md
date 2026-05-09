### UFieldSystemComponent


FieldSystemComponent

**属性**:

- `UFieldSystem FieldSystem [Field system asset to be used to store the construction fields. This asset is not required anymore and will be deprecated soon.]`
- `TArray<TSoftObjectPtr<AChaosSolverActor>> SupportedSolvers [List of chaos solvers that will use the field]`
- `bool bIsChaosField [If enabled the field will be used by all the chaos solvers]`
- `bool bIsWorldField [If enabled the field will be pushed to the world fields and will be available to materials and niagara]`


**方法**:

- `AddFieldCommand(bool Enabled, EFieldPhysicsType Target, UFieldSystemMetaData MetaData, UFieldNodeBase Field)`  
  AddConstructionField
  This function will dispatch a command to the physics thread to apply
  a generic evaluation of a user defined field network. This command will be used in a
  construction script to setup some particles properties (anchors...). See documentation,
  for examples of how to recreate variations of the above generic
  fields using field networks

  @param Enabled Is this force enabled for evaluation.
  @param Target Type of field supported by the solver.
  @param MetaData Meta data used to assist in evaluation
  @param Field Base evaluation node for the field network.
- `AddPersistentField(bool Enabled, EFieldPhysicsType Target, UFieldSystemMetaData MetaData, UFieldNodeBase Field)`  
  AddPersistentField
  This function will dispatch a command to the physics thread to apply
  a generic evaluation of a user defined field network. This command will be persistent in time and will live until
  the component is destroyed or until the RemovePersistenFields function is called. See documentation,
  for examples of how to recreate variations of the above generic
  fields using field networks

  @param Enabled Is this force enabled for evaluation.
  @param Target Type of field supported by the solver.
  @param MetaData Meta data used to assist in evaluation
  @param Field Base evaluation node for the field network.
- `ApplyLinearForce(bool Enabled, FVector Direction, float32 Magnitude)`  
  ApplyUniformForce
  This function will dispatch a command to the physics thread to apply
  a uniform linear force on each particle within the simulation.

  @param Enabled Is this force enabled for evaluation.
  @param Direction The direction of the linear force
  @param Magnitude The size of the linear force.
- `ApplyPhysicsField(bool Enabled, EFieldPhysicsType Target, UFieldSystemMetaData MetaData, UFieldNodeBase Field)`  
  AddTransientField
  This function will dispatch a command to the physics thread to apply
  a generic evaluation of a user defined transient field network. See documentation,
  for examples of how to recreate variations of the above generic
  fields using field networks

  @param Enabled Is this force enabled for evaluation.
  @param Target Type of field supported by the solver.
  @param MetaData Meta data used to assist in evaluation
  @param Field Base evaluation node for the field network.
- `ApplyRadialForce(bool Enabled, FVector Position, float32 Magnitude)`  
  ApplyRadialForce
  This function will dispatch a command to the physics thread to apply
  a linear force that points away from a position.

  @param Enabled Is this force enabled for evaluation.
  @param Position The origin point of the force
  @param Magnitude The size of the linear force.
- `ApplyRadialVectorFalloffForce(bool Enabled, FVector Position, float32 Radius, float32 Magnitude)`  
  FalloffRadialForce
  This function will dispatch a command to the physics thread to apply
  a linear force from a position in space. The force vector is weaker as
  it moves away from the center.

  @param Enabled Is this force enabled for evaluation.
  @param Position The origin point of the force
  @param Radius Radial influence from the position, positions further away are weaker.
  @param Magnitude The size of the linear force.
- `ApplyStayDynamicField(bool Enabled, FVector Position, float32 Radius)`  
  SetDynamicState
  This function will dispatch a command to the physics thread to apply
  a kinematic to dynamic state change for the particles within the field.

  @param Enabled Is this force enabled for evaluation.
  @param Position The location of the command
  @param Radius Radial influence from the position
- `ApplyStrainField(bool Enabled, FVector Position, float32 Radius, float32 Magnitude, int Iterations)`  
  ApplyExternalStran
  This function will dispatch a command to the physics thread to apply
  a strain field on a clustered set of geometry. This is used to trigger a
  breaking event within the solver.

  @param Enabled Is this force enabled for evaluation.
  @param Position The origin point of the force
  @param Radius Radial influence from the position, positions further away are weaker.
  @param Magnitude The size of the linear force.
  @param Iterations Levels of evaluation into the cluster hierarchy.
- `ApplyUniformVectorFalloffForce(bool Enabled, FVector Position, FVector Direction, float32 Radius, float32 Magnitude)`  
  FalloffUniformForce
  This function will dispatch a command to the physics thread to apply
  a linear force in a uniform direction. The force vector is weaker as
  it moves away from the center.

  @param Enabled Is this force enabled for evaluation.
  @param Position The origin point of the force
  @param Direction The direction of the linear force
  @param Radius Radial influence from the position, positions further away are weaker.
  @param Magnitude The size of the linear force.
- `RemovePersistentFields()`  
  RemovePersistentFields
  This function will remove all the field component persistent fields from chaos and from the world
- `ResetFieldSystem()`  
  RemoveConstructionFields
  This function will remove all the field component construction fields from chaos and from the world

---


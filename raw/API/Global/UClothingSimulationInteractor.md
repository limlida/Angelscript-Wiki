### UClothingSimulationInteractor


If a clothing simulation is able to be interacted with at runtime then a derived
interactor should be created, and at least the basic API implemented for that
simulation.
Only write to the simulation and context during the call to Sync, as that is
guaranteed to be a safe place to access this data.

**方法**:

- `ClothConfigUpdated()`  
  Called to update the cloth config without restarting the simulation.
- `DisableGravityOverride()`  
  Disable any currently set gravity override.
- `EnableGravityOverride(FVector InVector)`  
  Set a new gravity override and enable the override.
- `UClothingInteractor GetClothingInteractor(FName ClothingAssetName) const`  
  Return a cloth interactor for this simulation.
- `int GetNumCloths() const`  
  Return the number of cloths run by the simulation.
- `int GetNumDynamicParticles() const`  
  Return the number of dynamic (simulated) particles.
- `int GetNumIterations() const`  
  Return the solver number of iterations.
This could be different from the number set if the simulation hasn't updated yet.
- `int GetNumKinematicParticles() const`  
  Return the number of kinematic (animated) particles.
- `int GetNumSubsteps() const`  
  Return the solver number of subdivisions./
This could be different from the number set if the simulation hasn't updated yet.
- `float32 GetSimulationTime() const`  
  Return the instant average simulation time in ms.
- `PhysicsAssetUpdated()`  
  Called to update collision status without restarting the simulation.
- `SetAnimDriveSpringStiffness(float32 InStiffness)`  
  Set the stiffness of the spring force for the animation drive.
- `SetMaxNumIterations(int MaxNumIterations = 10)`  
  Set the maximum number of solver iterations.
- `SetNumIterations(int NumIterations = 1)`  
  Set the number of time dependent solver iterations.
- `SetNumSubsteps(int NumSubsteps = 1)`  
  Set the number of substeps or subdivisions.

---


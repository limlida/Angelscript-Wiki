### UMassLookAtSubsystem


Subsystem that keeps track of the LookAt targets

**方法**:

- `FMassLookAtRequestHandle CreateLookAtActorRequest(AActor ViewerActor, FMassLookAtPriority Priority, AActor TargetActor, EMassLookAtInterpolationSpeed InterpolationSpeed = EMassLookAtInterpolationSpeed :: Regular, float32 CustomInterpolationSpeed = 1.500000) const`  
  Creates a new LookAt request using the provided parameters for the mass entity associated to 'ViewerActor', if any.
@param ViewerActor Actor associated to the mass entity that needs to perform the LookAt
@param Priority Priority assigned to the request that will influence selected request when multiple requests are sent to the same entity
@param TargetActor Actor used as reference for the target location. If the actor has an associated mass entity then the target
location will be updated during the request lifetime. Otherwise, the actor location will be used to create a LookAt using a static target location
@param InterpolationSpeed Optional parameter to use predefined interpolation speed
@param CustomInterpolationSpeed Optional parameter to specify a custom interpolation speed when 'InterpolationSpeed' is set to EMassLookAtInterpolationSpeed::Custom
Method will log an error if it fails (e.g., no associated mass entity for viewer)
- `FMassLookAtRequestHandle CreateLookAtPositionRequest(AActor ViewerActor, FMassLookAtPriority Priority, FVector TargetLocation, EMassLookAtInterpolationSpeed InterpolationSpeed = EMassLookAtInterpolationSpeed :: Regular, float32 CustomInterpolationSpeed = 1.500000) const`  
  Creates a new LookAt request using the provided parameters for the mass entity associated to 'ViewerActor', if any.
@param ViewerActor Actor associated to the mass entity that needs to perform the LookAt
@param Priority Priority assigned to the request that will influence selected request when multiple requests are sent to the same entity
@param TargetLocation Static location used as target
@param InterpolationSpeed Optional parameter to use predefined interpolation speed
@param CustomInterpolationSpeed Optional parameter to specify a custom interpolation speed when 'InterpolationSpeed' is set to EMassLookAtInterpolationSpeed::Custom
Method will log an error if it fails (e.g., no associated mass entity).
- `DeleteRequest(FMassLookAtRequestHandle RequestHandle) const`  
  Removes given request from the active LookAt requests.
Method will log an error if it fails (e.g., invalid request handle).

---


### UBTService_BlueprintBase


Base class for blueprint based service nodes. Do NOT use it for creating native c++ classes!

When service receives Deactivation event, all latent actions associated this instance are being removed.
This prevents from resuming activity started by Activation, but does not handle external events.
Please use them safely (unregister at abort) and call IsServiceActive() when in doubt.

**属性**:

- `FString CustomDescription`
- `bool bShowEventDetails [show detailed information about implemented events]`
- `bool bShowPropertyDetails [show detailed information about properties]`


**方法**:

- `bool IsServiceActive() const`  
  check if service is currently being active
- `Activation(AActor OwnerActor)`  
  service became active
    @Note that if both generic and AI event versions are implemented only the more
    suitable one will be called, meaning the AI version if called for AI, generic one otherwise
- `ActivationAI(AAIController OwnerController, APawn ControlledPawn)`  
  Alternative AI version of ReceiveActivation function.
    @see ReceiveActivation for more details
    @Note that if both generic and AI event versions are implemented only the more
    suitable one will be called, meaning the AI version if called for AI, generic one otherwise
- `Deactivation(AActor OwnerActor)`  
  service became inactive
    @Note that if both generic and AI event versions are implemented only the more
    suitable one will be called, meaning the AI version if called for AI, generic one otherwise
- `DeactivationAI(AAIController OwnerController, APawn ControlledPawn)`  
  Alternative AI version of ReceiveDeactivation function.
    @see ReceiveDeactivation for more details
    @Note that if both generic and AI event versions are implemented only the more
    suitable one will be called, meaning the AI version if called for AI, generic one otherwise
- `SearchStart(AActor OwnerActor)`  
  task search enters branch of tree
    @Note that if both generic and AI event versions are implemented only the more
    suitable one will be called, meaning the AI version if called for AI, generic one otherwise
- `SearchStartAI(AAIController OwnerController, APawn ControlledPawn)`  
  Alternative AI version of ReceiveSearchStart function.
    @see ReceiveSearchStart for more details
    @Note that if both generic and AI event versions are implemented only the more
    suitable one will be called, meaning the AI version if called for AI, generic one otherwise
- `Tick(AActor OwnerActor, float DeltaSeconds)`  
  tick function
    @Note that if both generic and AI event versions are implemented only the more
    suitable one will be called, meaning the AI version if called for AI, generic one otherwise
- `TickAI(AAIController OwnerController, APawn ControlledPawn, float DeltaSeconds)`  
  Alternative AI version of ReceiveTick function.
    @see ReceiveTick for more details
    @Note that if both generic and AI event versions are implemented only the more
    suitable one will be called, meaning the AI version if called for AI, generic one otherwise

---


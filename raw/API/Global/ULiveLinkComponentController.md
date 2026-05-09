### ULiveLinkComponentController


**属性**:

- `TMap<TObjectPtr<UClass>,TObjectPtr<ULiveLinkControllerBase>> ControllerMap [Instanced controllers used to control the desired role]`
- `FOnControllerMapUpdatedDelegate OnControllerMapUpdatedDelegate [This Event is triggered any time the controller map is updated]`
- `FLiveLinkTickDelegate OnLiveLinkUpdated [This Event is triggered any time new LiveLink data is available, including in the editor]`
- `FLiveLinkSubjectRepresentation SubjectRepresentation`
- `bool bDisableEvaluateLiveLinkWhenSpawnable [If true, will not evaluate LiveLink if the attached actor is a spawnable in Sequencer]`
- `bool bEvaluateLiveLink [If false, will not evaluate live link, effectively pausing.]`
- `bool bUpdateInEditor []`
- `bool bUpdateInPreviewEditor [If true, will tick when the world is a preview (i.e Blueprint editors)]`


**方法**:

- `UActorComponent GetControlledComponent(TSubclassOf<ULiveLinkRole> InRoleClass) const`  
  Returns the component controlled by the LiveLink controller of the input Role. Returns null if there is no controller for that Role
- `FLiveLinkSubjectRepresentation GetSubjectRepresentation() const`  
  Return Representation of Subject that is used in the controller
- `SetControlledComponent(TSubclassOf<ULiveLinkRole> InRoleClass, UActorComponent InComponent)`  
  Set the component to control for the LiveLink controller of the input Role
- `SetSubjectRepresentation(FLiveLinkSubjectRepresentation InSubjectRepresentation)`  
  Set Representation of Subject that is used in the controller and update the controller map

---


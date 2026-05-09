### UNiagaraDataInterfaceCamera


**属性**:

- `int PlayerControllerIndex [This is used to determine which camera position to query for cpu emitters. If no valid index is supplied, the first controller is used as camera reference.]`
- `bool bRequireCurrentFrameData [When this option is disabled, we use the previous frame's data for the camera and issue the simulation early. This greatly
      reduces overhead and allows the game thread to run faster, but comes at a tradeoff if the dependencies might leave gaps or other visual artifacts.]`

---


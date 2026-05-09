### USoundSubmixBase


**属性**:

- `float32 AutoDisableTime [The minimum amount of time to wait before automatically disabling a submix if it is silent. Will immediately re-enable if source audio is sent to it.]`
- `TArray<TObjectPtr<USoundSubmixBase>> ChildSubmixes [Child submixes to this sound mix]`
- `bool bAutoDisable [Auto-manage enabling and disabling the submix as a CPU optimization. It will be disabled if the submix and all child submixes are silent. It will re-enable if a sound is sent to the submix or a child submix is audible.]`


**方法**:

- `bool DynamicConnect(USoundSubmixBase InParent)`  
  Dynamically Connects to a parent submix.
@param        WorldContextObject      UObject that's used to GetWorld
@param        InParent        Parent Submix to connect to
- `bool DynamicDisconnect()`  
  Dynamically Disconnect from a parent.
@param        WorldContextObject      UObject that's used to GetWorld
- `USoundSubmixBase FindDynamicAncestor()`  
  Searching upwards from this Submix to the root looking for the first Submix marked Dynamic
If this Submix is Dynamic this will be returned.

---


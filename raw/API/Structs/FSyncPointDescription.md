### FSyncPointDescription


Description of a registered sync event that will happen once per frame according to specific rules

**属性**:

- `ESyncPointActivationRules ActivationRules [Rules for when and how a sync point can be activated]`
- `ESyncPointEventType EventType [The kind of task async task that is used to implement this sync point]`
- `ETickingGroup FirstPossibleTickGroup [The first tick group this could be triggered during]`
- `ETickingGroup LastPossibleTickGroup [The last possible tick group this will be triggered during, and when it will be forcibly triggered as a backup]`
- `TArray<FName> PrerequisiteSyncGroups [Array of other sync groups that this will tick after. To match the normal tick behavior these will be ignored if thee sync point is not active]`
- `FName RegisteredName [Name of the sync point that will be used for lookup]`


**方法**:

- `FSyncPointDescription& opAssign(FSyncPointDescription Other)`

---


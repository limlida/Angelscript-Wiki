### UActorRecorderPropertyMap


This represents a list of all possible properties and components on an actor
which can be recorded by the Actor Recorder and whether or not the user wishes
to record them. If you wish to expose a property to be recorded it needs to be marked
as "Interp" (C++) or "Expose to Cinematics" in Blueprints.

**属性**:

- `TArray<TObjectPtr<UActorRecorderPropertyMap>> Children`
- `TArray<FActorRecordedProperty> Properties [Represents properties exposed to Cinematics that can possibly be recorded.]`
- `TSoftObjectPtr<UObject> RecordedObject []`

---


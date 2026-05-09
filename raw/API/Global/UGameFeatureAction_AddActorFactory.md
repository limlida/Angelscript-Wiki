### UGameFeatureAction_AddActorFactory


GameFeatureAction to add an actor factory when this plugin registers.
Useful for factories that might load BP classes within a plugin which might not have been discovered yet.

**属性**:

- `TSoftClassPtr<UObject> ActorFactory [The actor factory class to add once this plugin registers
Actor factories should be setup with bShouldAutoRegister so that they do not register during engine boot.]`

---


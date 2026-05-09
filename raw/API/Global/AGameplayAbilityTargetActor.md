### AGameplayAbilityTargetActor


TargetActors are spawned to assist with ability targeting. They are spawned by ability tasks and create/determine the outgoing targeting data passed from one task to another

WARNING: These actors are spawned once per ability activation and in their default form are not very efficient
For most games you will need to subclass and heavily modify this actor, or you will want to implement similar functions in a game-specific actor or blueprint to avoid actor spawn costs
This class is not well tested by internal games, but it is a useful class to look at to learn how target replication occurs

**属性**:

- `FGameplayTargetDataFilterHandle Filter [Using a special class for replication purposes.]`
- `APlayerController PrimaryPC []`
- `TSubclassOf<AGameplayAbilityWorldReticle> ReticleClass [Reticle that will appear on top of acquired targets. Reticles will be spawned/despawned as targets are acquired/lost.]`
- `FWorldReticleParameters ReticleParams [Parameters for world reticle. Usage of these parameters is dependent on the reticle.]`
- `bool ShouldProduceTargetDataOnServer [The TargetData this class produces can be entirely generated on the server. We don't require the client to send us full or partial TargetData (possibly just a 'confirm')]`
- `AActor SourceActor []`
- `FGameplayAbilityTargetingLocationInfo StartLocation [Describes where the targeting action starts, usually the player character or a socket on the player character. //UPROPERTY(BlueprintReadOnly, meta=(ExposeOnSpawn=true), Category=Targeting)]`
- `bool bDebug [Draw the debug information (if applicable) for this targeting actor.]`
- `bool bDestroyOnConfirmation []`

---


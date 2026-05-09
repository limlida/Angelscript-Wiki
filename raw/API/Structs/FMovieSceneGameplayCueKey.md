### FMovieSceneGameplayCueKey


**属性**:

- `int AbilityLevel [If originating from an ability, this will be the level of that ability]`
- `FName AttachSocketName [When attached to a skeletal mesh component, specifies a socket to trigger the cue at]`
- `FGameplayCueTag Cue []`
- `FMovieSceneObjectBindingID EffectCauser [The physical actor that actually did the damage, can be a weapon or projectile]`
- `int GameplayEffectLevel [The level of that GameplayEffect]`
- `FMovieSceneObjectBindingID Instigator [Instigator actor, the actor that owns the ability system component.]`
- `FVector Location [Location cue took place at - relative to the attached component if applicable]`
- `FVector Normal [Normal of impact that caused cue]`
- `float32 NormalizedMagnitude [Magnitude of source gameplay effect, normalzed from 0-1. Use this for "how strong is the gameplay effect" (0=min, 1=,max)]`
- `const UPhysicalMaterial PhysicalMaterial [PhysMat of the hit, if there was a hit.]`
- `bool bAttachToBinding [Attach the gameplay cue to the track's bound object in sequencer]`


**方法**:

- `FMovieSceneGameplayCueKey& opAssign(FMovieSceneGameplayCueKey Other)`

---


### UMovieSceneReplaceableDirectorBlueprintBinding


Custom binding type that uses a Director Blueprint endpoint to allow the user to define at runtime how to resolve this binding.
User can use any desired custom spawnable type as the preview within Sequencer, such as a MovieSceneSpawnableDirectorBlueprintBinding for another endpoint
for spawning, or a MovieSceneSpawnableActorBinding to spawn from an actor template.

**属性**:

- `FMovieSceneDynamicBinding DynamicBinding [Director Blueprint defined binding info]`
- `TSubclassOf<UMovieSceneSpawnableBindingBase> PreviewSpawnableType [Preview Spawnable Type to use for this replaceable]`

---


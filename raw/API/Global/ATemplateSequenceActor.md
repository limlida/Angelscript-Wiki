### ATemplateSequenceActor


Actor responsible for controlling a specific template sequence in the world.

**属性**:

- `FTemplateSequenceBindingOverrideData BindingOverride [The override for the template sequence's root object binding. See SetBinding.]`
- `FMovieSceneSequencePlaybackSettings PlaybackSettings`
- `UTemplateSequencePlayer SequencePlayer []`
- `FSoftObjectPath TemplateSequence`


**方法**:

- `UTemplateSequence GetSequence() const`  
  Get the template sequence being played by this actor.

@return the template sequence, or nullptr if it is not assigned or cannot be loaded
- `UTemplateSequencePlayer GetSequencePlayer() const`  
  Get the actor's sequence player, or nullptr if it not yet initialized.
- `UTemplateSequence LoadSequence() const`  
  Get the template sequence being played by this actor.

@return the template sequence, or nullptr if it is not assigned or cannot be loaded
- `SetBinding(AActor Actor, bool bOverridesDefault = true)`  
  Set the actor to play the template sequence onto, by setting up an override for the template
sequence's root object binding.
- `SetSequence(UTemplateSequence InSequence)`  
  Set the template sequence being played by this actor.

---


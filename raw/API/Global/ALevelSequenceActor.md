### ALevelSequenceActor


Actor responsible for controlling a specific level sequence in the world.

**属性**:

- `UMovieSceneBindingOverrides BindingOverrides [Mapping of actors to override the sequence bindings with]`
- `ULevelSequenceBurnInOptions BurnInOptions []`
- `FLevelSequenceCameraSettings CameraSettings`
- `UObject DefaultInstanceData [Instance data that can be used to dynamically control sequence evaluation at runtime]`
- `ULevelSequence LevelSequenceAsset`
- `FMovieSceneSequencePlaybackSettings PlaybackSettings`
- `ULevelSequencePlayer SequencePlayer []`
- `bool bOverrideInstanceData [Enable specification of dynamic instance data to be supplied to the sequence during playback]`
- `bool bReplicatePlayback [If true, playback of this level sequence on the server will be synchronized across other clients]`


**方法**:

- `AddBinding(FMovieSceneObjectBindingID Binding, AActor Actor, bool bAllowBindingsFromAsset = false)`  
  Adds the specified actor to the overridden bindings for the specified binding ID, optionally still allowing the bindings defined in the Level Sequence asset

@param Binding Binding to modify
@param Actor Actor to bind
@param bAllowBindingsFromAsset If false the new bindings being supplied here will replace the bindings set in the level sequence asset, meaning the original object animated by
                                                               Sequencer will no longer be animated. Bindings set to spawnables will not spawn if false. If true, new bindings will be in addition to ones set
                                                               set in Sequencer UI. This function will not modify the original asset.
- `AddBindingByTag(FName BindingTag, AActor Actor, bool bAllowBindingsFromAsset = false)`  
  Binds an actor to all the bindings tagged with the specified name in this sequence. Does not remove any exising bindings that have been set up through this API. Object Bindings can be tagged within the sequence UI by RMB -> Tags... on the object binding in the tree.

@param BindingTag   The unique tag name to lookup bindings with
@param Actor        The actor to assign to all the tagged bindings
@param bAllowBindingsFromAsset If false the new bindings being supplied here will replace the bindings set in the level sequence asset, meaning the original object animated by
                                                               Sequencer will no longer be animated. Bindings set to spawnables will not spawn if false. If true, new bindings will be in addition to ones set
                                                               set in Sequencer UI. This function will not modify the original asset.
- `FMovieSceneObjectBindingID FindNamedBinding(FName Tag) const`  
  Retrieve the first object binding that has been tagged with the specified name
- `TArray<FMovieSceneObjectBindingID> FindNamedBindings(FName Tag) const`  
  Retrieve all the bindings that have been tagged with the specified name

@param Tag  The unique tag name to lookup bindings with. Object Bindings can be tagged within the sequence UI by RMB -> Tags... on the object binding in the tree.
@return An array containing all the bindings that are tagged with this name, potentially empty.
- `ULevelSequence GetSequence() const`  
  Get the level sequence being played by this actor.

@return Level sequence, or nullptr if not assigned or if it cannot be loaded.
@see SetSequence
- `ULevelSequencePlayer GetSequencePlayer() const`  
  Access this actor's sequence player, or None if it is not yet initialized
- `HideBurnin()`  
  Hide burnin
- `RemoveBinding(FMovieSceneObjectBindingID Binding, AActor Actor)`  
  Removes the specified actor from the specified binding's actor array
- `RemoveBindingByTag(FName Tag, AActor Actor)`  
  Removes the specified actor from the specified binding's actor array
- `ResetBinding(FMovieSceneObjectBindingID Binding)`  
  Resets the specified binding back to the defaults defined by the Level Sequence asset
- `ResetBindings()`  
  Resets all overridden bindings back to the defaults defined by the Level Sequence asset
- `SetBinding(FMovieSceneObjectBindingID Binding, TArray<AActor> Actors, bool bAllowBindingsFromAsset = false)`  
  Overrides the specified binding with the specified actors, optionally still allowing the bindings defined in the Level Sequence asset

@param Binding Binding to modify
@param Actors Actors to bind
@param bAllowBindingsFromAsset If false the new bindings being supplied here will replace the bindings set in the level sequence asset, meaning the original object animated by
                                                               Sequencer will no longer be animated. Bindings set to spawnables will not spawn if false. If true, new bindings will be in addition to ones set
                                                               set in Sequencer UI. This function will not modify the original asset.
- `SetBindingByTag(FName BindingTag, TArray<AActor> Actors, bool bAllowBindingsFromAsset = false)`  
  Assigns an set of actors to all the bindings tagged with the specified name in this sequence. Object Bindings can be tagged within the sequence UI by RMB -> Tags... on the object binding in the tree.

@param BindingTag   The unique tag name to lookup bindings with
@param Actors       The actors to assign to all the tagged bindings
@param bAllowBindingsFromAsset If false the new bindings being supplied here will replace the bindings set in the level sequence asset, meaning the original object animated by
                                                               Sequencer will no longer be animated. Bindings set to spawnables will not spawn if false. If true, new bindings will be in addition to ones set
                                                               set in Sequencer UI. This function will not modify the original asset.
- `SetReplicatePlayback(bool ReplicatePlayback)`  
  Set whether or not to replicate playback for this actor
- `SetSequence(ULevelSequence InSequence)`  
  Set the level sequence being played by this actor.

@param InSequence The sequence object to set.
@see GetSequence
- `ShowBurnin()`  
  Show burnin

---


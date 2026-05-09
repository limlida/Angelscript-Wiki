### USoundNodeRandom


Selects sounds from a random set

**属性**:

- `int PreselectAtLevelLoad [If greater than 0, then upon each level load such a number of inputs will be randomly selected
and the rest will be removed. This can be used to cut down the memory usage of large randomizing
cues.]`
- `TArray<float32> Weights []`
- `bool bRandomizeWithoutReplacement [Determines whether or not this SoundNodeRandom should randomize with or without
replacement.

WithoutReplacement means that only nodes left will be valid for
selection.  So with that, you are guarenteed to have only one occurrence of the
sound played until all of the other sounds in the set have all been played.

WithReplacement means that a node will be chosen and then placed back into the set.
So one could play the same sound over and over if the probabilities don't go your way :-)]`
- `bool bShouldExcludeFromBranchCulling [If set to true, this random node will not be culled on load for platforms with a maximum amount of preloaded random branches
 set in project settings]`

---


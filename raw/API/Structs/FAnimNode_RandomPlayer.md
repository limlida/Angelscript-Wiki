### FAnimNode_RandomPlayer


**属性**:

- `float32 BlendWeight [Last encountered blend weight for this node]`
- `TArray<FRandomPlayerSequenceEntry> Entries [List of sequences to randomly step through]`
- `bool bIgnoreForRelevancyTest [If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node]`
- `bool bShuffleMode [When shuffle mode is active we will never loop a sequence beyond MaxLoopCount
without visiting each sequence in turn (no repeats). Enabling this will ignore
ChanceToPlay for each entry]`


**方法**:

- `FAnimNode_RandomPlayer& opAssign(FAnimNode_RandomPlayer Other)`

---


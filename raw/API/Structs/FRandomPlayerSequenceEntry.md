### FRandomPlayerSequenceEntry


The random player node holds a list of sequences and parameter ranges which will be played continuously
In a random order. If shuffle mode is enabled then each entry will be played once before repeating any

**属性**:

- `FAlphaBlend BlendIn [Blending properties used when this entry is blending in ontop of another entry]`
- `float32 ChanceToPlay [When not in shuffle mode, this is the chance this entry will play (normalized against all other sample chances)]`
- `int MaxLoopCount [Maximum number of times this entry will loop before ending]`
- `float32 MaxPlayRate [Maximum playrate for this entry]`
- `int MinLoopCount [Minimum number of times this entry will loop before ending]`
- `float32 MinPlayRate [Minimum playrate for this entry]`
- `UAnimSequenceBase Sequence [Sequence to play when this entry is picked]`


**方法**:

- `FRandomPlayerSequenceEntry& opAssign(FRandomPlayerSequenceEntry Other)`

---


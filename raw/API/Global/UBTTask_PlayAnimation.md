### UBTTask_PlayAnimation


Play indicated AnimationAsset on Pawn controlled by BT
Note that this node is generic and is handing multiple special cases,
If you want a more efficient solution you'll need to implement it yourself (or wait for our BTTask_PlayCharacterAnimation)

**属性**:

- `FValueOrBBKey_Object AnimationToPlay [Animation asset to play. Note that it needs to match the skeleton of pawn this BT is controlling]`
- `FValueOrBBKey_Bool bLooping []`
- `FValueOrBBKey_Bool bNonBlocking [if true the task will just trigger the animation and instantly finish. Fire and Forget.]`

---


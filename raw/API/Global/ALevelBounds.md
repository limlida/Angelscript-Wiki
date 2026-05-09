### ALevelBounds


Defines level bounds
Updates bounding box automatically based on actors transformation changes or holds fixed user defined bounding box
Uses only actors where AActor::IsLevelBoundsRelevant() == true

**属性**:

- `UBoxComponent BoxComponent [Bounding box for the level bounds.]`
- `bool bAutoUpdateBounds [Whether to automatically update actor bounds based on all relevant actors bounds belonging to the same level]`

---


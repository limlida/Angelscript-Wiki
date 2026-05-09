### FCoverState


**属性**:

- `FHitResult CoverHit [The raw hit information from the last cover trace]`
- `FRotator CoverPlayerRotation [Cover rotation is always the same, but we need another rotator for the players cover rotation as moving along cover and aiming in/out will change this.]`
- `FTransform CoverTransform [transform of the location of the cover. use GetCoverLocationAndRotation() to get the player location for the cover.]`
- `bool bIsLeftOpen [Whether the space to the left of the cover is open, and we can lean left out of the cover.]`
- `bool bIsRightOpen [Whether the space to the right of the cover is open, and we can lean right out of the cover.]`
- `bool bIsShortCover [Whether we're in a short cover or not. Server will crouch/stand us depending on this value.]`


**方法**:

- `FCoverState& opAssign(FCoverState Other)`

---


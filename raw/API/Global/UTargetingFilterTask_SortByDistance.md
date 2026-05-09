### UTargetingFilterTask_SortByDistance


@class UTargetingFilterTask_SortByDistance

Simple sorting filter based on the distance to the source actor.
Note: This filter will use the FTargetingDefaultResultsSet and
use the Score factor defined for each target to store the distance
and sort by that value.

**属性**:

- `ECollisionChannel DistanceToCollisionChannel [Collision channel used to determine the closest point on a actor's collider.
Colliders will only be considered if they block this channel]`
- `bool bUseDistanceToNearestBlockingCollider [Use the distance to the nearest blocking collision surface on each actor instead of the distance to the actor's location]`

---


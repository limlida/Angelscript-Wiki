### FTargetingSourceContext


@struct FTargetingSourceContext

Stores context information about a targeting request.

**属性**:

- `AActor InstigatorActor [The optional instigator the targeting request is owned by (i.e. owner of a projectile)]`
- `AActor SourceActor [The optional actor the targeting request sources from (i.e. player/projectile/etc)]`
- `FVector SourceLocation [The optional location the targeting request will source from (i.e. do AOE targeting at x/y/z location)]`
- `UObject SourceObject [The optional reference to a source uobject to use in the context]`
- `FName SourceSocketName [The optional socket name to use on the source actor (if an actor is defined)]`


**方法**:

- `FTargetingSourceContext& opAssign(FTargetingSourceContext Other)`

---


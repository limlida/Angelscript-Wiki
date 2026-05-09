### UNiagaraDataChannel_GameplayBurst


Data Channel for Gameplay Burst FX.
Will bucket data primarily into world aligned grid cells.
Each bucket can optionally spawn a Niagara System to consume data in that bucket.
Can also route data to specific buckets and fx that are attached to the incoming OwnerComponent.
Optional additional routing by gameplay tag is available.

**属性**:

- `FNDCGameplayBurstAttachmentSettings AttachmentSettings [Settings controlling whether incoming data should route to the main world aligned spatial grids or use a special bucket attached to and owned by a specific component.
Useful in cases where we want to attach Burst FX to dynamic moving objects etc for improved visuals.]`
- `FVector CellSize [Default Cell Size. Can be overridden by users via the AccessContext.
Internal data and their spawned handler FX are bucketed internally in a world aligned grid of cells.]`
- `FVector SystemBoundsPadding [Default System Bounds Padding. Can be overridden by users via the AccessContext.
Niagara Systems spawned by this NDC will have their bounds padded by this amount.
For attached systems, the bounds will be the component bounds + padding.
For non attached, the bounds will be the CellSize + padding.]`

---


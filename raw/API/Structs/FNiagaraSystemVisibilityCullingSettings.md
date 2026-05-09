### FNiagaraSystemVisibilityCullingSettings


Scalability settings for Niagara Systems for a particular platform set (unless overridden).

**属性**:

- `float32 MaxTimeOutsideViewFrustum [Effects will be culled if they go longer than this time outside the view frustum.]`
- `float32 MaxTimeWithoutRender [Effects will be culled if they go longer than this time without being rendered.]`
- `bool bAllowPreCullingByViewFrustum [If true and bCullByViewFrustum is enabled, we allow view frustum checks in pre-culling. Meaning we can cull off screen systems before they even spawn.]`
- `bool bCullByViewFrustum [Controls whether view frustum culling is enabled. Niagara can do it's own separate view frustum culling to give coarse visibility culling that does not depend directly on rendering like CullWhenNotRendered.
This requires fixed bounds to be used in pre-culling.]`
- `bool bCullWhenNotRendered [Controls whether we cull when not rendered. This includes all reasons for being not rendered such as view frustum, occlusion and hidden flags etc. As this requires feedback form the rendering system, it cannot be used for pre-culling.]`


**方法**:

- `FNiagaraSystemVisibilityCullingSettings& opAssign(FNiagaraSystemVisibilityCullingSettings Other)`

---


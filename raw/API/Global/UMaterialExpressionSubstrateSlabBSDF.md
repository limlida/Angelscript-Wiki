### UMaterialExpressionSubstrateSlabBSDF


**属性**:

- `USpecularProfile SpecularProfile [SpecularProfile, for modulating specular appearance and simulating more complex visuals such as iridescence.]`
- `EMaterialSubSurfaceType SubSurfaceType [Define sub-subsurface used behavior of the slab. This option trades quality over performance and will result into visual differences.
 * For slab not sitting at the bottom of the topology (e.g. slabs stacked with a vertial operator), only the SimpleVolume SSS type is available.
 * In non-opaque blend modes, SSS Diffusion and SSS Diffusion Profile are not available and will fallback onto Wrap mode.]`
- `USubsurfaceProfile SubsurfaceProfile [SubsurfaceProfile, for Screen Space Subsurface Scattering. The profile needs to be set up on both the Substrate diffuse node, and the material node at the moment.]`

---


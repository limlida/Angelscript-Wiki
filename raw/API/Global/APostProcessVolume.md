### APostProcessVolume


for FPostprocessSettings

**属性**:

- `float32 BlendRadius [World space radius around the volume that is used for blending (only if not unbound).]`
- `float32 BlendWeight [0:no effect, 1:full effect]`
- `float32 Priority [Priority of this volume. In the case of overlapping volumes the one with the highest priority
overrides the lower priority ones. The order is undefined if two or more overlapping volumes have the same priority.]`
- `FPostProcessSettings Settings [Post process settings to use for this volume.]`
- `bool bEnabled [Whether this volume is enabled or not.]`
- `bool bUnbound [Whether this volume covers the whole world, or just the area inside its bounds.]`

---


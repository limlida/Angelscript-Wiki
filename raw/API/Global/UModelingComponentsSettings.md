### UModelingComponentsSettings


Settings for the Modeling Components plug-in. These settings are primarily used to configure two things:
  - Behavior of things like optional Rendering features inside Modeling Tools, eg for edit-preview rendering
  - Setup of New Mesh Objects emitted by Modeling Tools (eg their default collision settings, etc)

**属性**:

- `ECollisionTraceFlag CollisionMode [Default Collision Mode set on new Mesh Objects created by Modeling Tools]`
- `bool bEnableCollision [Enable Collision Support for new Mesh Objects created by Modeling Tools]`
- `bool bEnableRayTracing [Enable Raytracing Support for new Mesh Objects created by Modeling Tools, if support is optional (eg DynamicMeshActors)]`
- `bool bEnableRayTracingWhileEditing [Enable Realtime Raytracing support for Mesh Editing Tools. This will impact performance of Tools with Real-Time feedback like 3D Sculpting.]`
- `bool bGenerateLightmapUVs [Enable auto-generated Lightmap UVs for new Mesh Objects created by Modeling Tools, where supported]`

---


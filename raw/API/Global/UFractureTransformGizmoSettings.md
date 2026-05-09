### UFractureTransformGizmoSettings


This helps create a 3D transform gizmo that can be used to adjust fracture placement
Note it is tailored to UFractureToolCutterBase, and expects Setup(), Shutdown()
and ResetGizmo() to be called on tool setup, shutdown, and selection change respectively

**属性**:

- `bool bCenterOnSelection [Recenter the gizmo to the center of the selection when selection changes]`
- `bool bUseGizmo [Use a 3D rigid transform gizmo to place the fracture pattern.  Only supports grouped fracture.]`

---


### UShapeComponent


ShapeComponent is a PrimitiveComponent that is represented by a simple geometrical shape (sphere, capsule, box, etc).

**属性**:

- `TSubclassOf<UNavAreaBase> AreaClassOverride [Navigation area type override, null / none = no change to nav mesh.
bDynamicObstacle must be true and bUseSystemDefaultAreaClass false to use this.]`
- `float32 LineThickness [Used to control the line thickness when rendering]`
- `FColor ShapeColor [Color used to draw the shape.]`
- `bool bDynamicObstacle [If set, shape will be exported for navigation as dynamic modifier instead of using regular collision data]`
- `bool bUseSystemDefaultObstacleAreaClass [Uses FNavigationSystem::GetDefaultObstacleArea() by default instead of AreaClassOverride, bDynamicObstacle must be true to use this.]`


**方法**:

- `SetLineThickness(float32 Thickness)`  
  Set the LineThickness

---


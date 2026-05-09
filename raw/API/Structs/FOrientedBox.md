### FOrientedBox


Structure for arbitrarily oriented boxes (i.e. not necessarily axis-aligned).
@note The full C++ class is located here: Engine\Source\Runtime\Core\Public\Math\OrientedBox.h

**属性**:

- `FVector AxisX [Holds the x-axis vector of the box. Must be a unit vector.]`
- `FVector AxisY [Holds the y-axis vector of the box. Must be a unit vector.]`
- `FVector AxisZ [Holds the z-axis vector of the box. Must be a unit vector.]`
- `FVector Center [Holds the center of the box.]`
- `float ExtentX [Holds the extent of the box along its x-axis.]`
- `float ExtentY [Holds the extent of the box along its y-axis.]`
- `float ExtentZ [Holds the extent of the box along its z-axis.]`


**方法**:

- `FOrientedBox& opAssign(FOrientedBox Other)`

---


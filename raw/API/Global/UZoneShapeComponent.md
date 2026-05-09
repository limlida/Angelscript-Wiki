### UZoneShapeComponent


**属性**:

- `FZoneLaneProfileRef LaneProfile [Common lane template for whole shape]`
- `TArray<FZoneShapePoint> Points [Shape points]`
- `EZoneShapePolygonRoutingType PolygonRoutingType [Polygon shape routing type]`
- `FZoneShapeType ShapeType [Shape type, spline or polygon]`
- `FZoneGraphTagMask Tags [Zone tags, the lanes inherit zone tags.]`
- `bool bReverseLaneProfile [True if lane profile should be reversed]`


**方法**:

- `FZoneShapeType GetShapeType() const`  
  @return Shape type.
- `FZoneGraphTagMask GetTags() const`  
  @return Shape's tags.
- `bool IsLaneProfileReversed() const`  
  @return True if common lane profile is reversed.
- `SetPolygonRoutingType(EZoneShapePolygonRoutingType NewType)`  
  Sets the polygon routing type.
- `bool SetReverseLaneProfile(bool bReverse)`  
  Set whether common lane profile should be reversed.
@param bReverse Reverse state
@return Newly set reversed state.
- `SetShapeType(FZoneShapeType Type)`  
  Sets shape type.
@param Type New shape type.
- `SetTags(FZoneGraphTagMask NewTags)`  
  Sets shape tags.
@param NewTags New tags to set.

---

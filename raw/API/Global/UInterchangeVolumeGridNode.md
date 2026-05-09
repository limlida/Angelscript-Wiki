### UInterchangeVolumeGridNode


Represents a single grid (essentially a 3d texture) within a volumetric file

**方法**:

- `bool GetCustomElementType(EVolumeGridElementType& AttributeValue) const`  
  Gets the datatype of the value of each voxel in the grid
- `bool GetCustomGridActiveAABBMax(FIntVector& AttributeValue) const`  
  Gets the max X, Y and Z of the grid's active axis-aligned bounding box.
- `bool GetCustomGridActiveAABBMin(FIntVector& AttributeValue) const`  
  Gets the min X, Y and Z of the grid's active axis-aligned bounding box.
- `bool GetCustomGridActiveDimensions(FIntVector& AttributeValue) const`  
  Gets the size of the grid, in voxels.
- `bool GetCustomGridTransform(FTransform& AttributeValue) const`  
  Gets the grid transform contained in the volume file
- `bool GetCustomNumComponents(int& NumComponents) const`  
  Gets the number of components of each voxel of the grid (e.g. 3 components for a vector grid)
- `bool SetCustomElementType(EVolumeGridElementType AttributeValue)`  
  Sets the datatype of the value of each voxel in the grid
- `bool SetCustomGridActiveAABBMax(FIntVector AttributeValue)`  
  Sets the max X, Y and Z of the grid's active axis-aligned bounding box.
- `bool SetCustomGridActiveAABBMin(FIntVector AttributeValue)`  
  Sets the min X, Y and Z of the grid's active axis-aligned bounding box.
- `bool SetCustomGridActiveDimensions(FIntVector AttributeValue)`  
  Sets the size of the grid, in voxels.
- `bool SetCustomGridTransform(FTransform AttributeValue)`  
  Sets the grid transform contained in the volume file
- `bool SetCustomNumComponents(int NumComponents)`  
  Sets the number of components of each voxel of the grid (e.g. 3 components for a vector grid)

---


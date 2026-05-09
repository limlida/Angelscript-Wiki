### UInterchangeVolumeNode


Represents a file that contains volume data in the form of (potentially multiple) grids,
which are represented as UInterchangeVolumeGridNode dependencies

**方法**:

- `bool AddCustomFrameIndexInAnimation(int Index)`  
  Adds a frame index for which this volume is displayed within the animation that it belongs to, if any
- `bool AddCustomGridDependency(FString DependencyUid)`  
  Sets the Node ID of an UInterchangeVolumeGridNode dependency
- `bool GetCustomAnimationID(FString& AttributeValue) const`  
  Gets an identifier that is shared by all volume nodes that correspond to the same animation
(i.e. every volume node within the animation will have the same AnimationID)
- `bool GetCustomFileName(FString& AttributeValue) const`  
  Gets the filename of the file with volume data (e.g. "C:/MyFolder/File.vdb").

This is stored on the translated node as well as the source data, as a volume import may discover other
additional files in order to handle animated volume imports.
- `GetCustomFrameIndexInAnimation(int IndexIndex, int& OutIndex) const`  
  Gets one of the frame indices for which this volume is displayed within the animation that it belongs to, if any
- `GetCustomFrameIndicesInAnimation(TArray<int>& OutAnimationIndices) const`  
  Get the frame indices for which this volume is displayed within the animation that it belongs to, if any
(e.g. if this had [2, 3] then frames 2 and 3 of the animation with AnimationID should display this volume)
- `GetCustomGridDependecies(TArray<FString>& OutDependencies) const`  
  Gets the Node IDs of UInterchangeVolumeGridNodes declared as dependencies by this volume node
- `int GetCustomGridDependeciesCount() const`  
  Gets the number of UInterchangeVolumeGridNodes declared as dependencies by this volume node
(in other words, returns the number of volume grids contained in this file)
- `GetCustomGridDependency(int Index, FString& OutDependency) const`  
  Gets the Node ID of an UInterchangeVolumeGridNode dependency
- `bool RemoveCustomFrameIndexInAnimation(int Index)`  
  Removes a frame index for which this volume is displayed within the animation that it belongs to, if any
- `bool RemoveCustomGridDependency(FString DependencyUid)`  
  Removes the Node ID of an UInterchangeVolumeGridNode dependency
- `bool SetCustomAnimationID(FString AttributeValue)`  
  Sets an identifier that is shared by all volume nodes that correspond to the same animation
(i.e. every volume node within the animation will have the same AnimationID)
- `bool SetCustomFileName(FString AttributeValue)`  
  Sets the filename of the file with volume data (e.g. "C:/MyFolder/File.vdb").

This is stored on the translated node as well as the source data, as a volume import may discover other
additional files in order to handle animated volume imports.

---


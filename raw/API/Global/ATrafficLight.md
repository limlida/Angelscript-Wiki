### ATrafficLight


**属性**:

- `FVector QueryExtent [Determines the extent to query for an intersection side around SideLocation
Note that setting the query extent too small can create some false positives when querying for sides.]`
- `FVector SideLocation [The location of the intersection side to be used for this traffic light]`


**方法**:

- `float32 GetPeriod(uint8 Rule) const`  
  Gets the current period of this traffic light. If the value is 0, then the current period does not deal with this traffic light (we can assume red light), or that the cached side is not valid.
- `OnPeriodUpdated()`  
  Gets called whenever the cached intersection gets a new period

---


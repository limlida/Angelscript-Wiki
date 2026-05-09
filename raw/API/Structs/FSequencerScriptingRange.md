### FSequencerScriptingRange


**属性**:

- `int ExclusiveEnd []`
- `int InclusiveStart []`
- `bool bHasEnd`
- `bool bHasStart`


**方法**:

- `int GetEndFrame() const`  
  Get the ending frame for the specified range, if it has one. Defined as the first subsequent frame that is outside of the range.

@param Range       The range to get the end from
- `float32 GetEndSeconds() const`  
  Get the ending time for the specified range in seconds, if it has one. Defined as the first time that is outside of the range.

@param Range       The range to get the end from
- `int GetStartFrame() const`  
  Get the starting frame for the specified range, if it has one. Defined as the first valid frame that is inside the range.

@param Range       The range to get the start from
- `float32 GetStartSeconds() const`  
  Get the starting time for the specified range in seconds, if it has one. Defined as the first valid time that is inside the range.

@param Range       The range to get the start from
- `bool HasEnd() const`  
  Check whether this range has an end

@param Range       The range to check
- `bool HasStart() const`  
  Check whether this range has a start

@param Range       The range to check
- `RemoveEnd()`  
  Remove the end from this range, making it infinite

@param Range       The range to remove the end from
- `RemoveStart()`  
  Remove the start from this range, making it infinite

@param Range       The range to remove the start from
- `SetEndFrame(int End)`  
  Set the ending frame for the specified range. Interpreted as the first subsequent frame that is outside of the range.

@param Range       The range to set the end on
- `SetEndSeconds(float32 End)`  
  Set the ending time for the specified range in seconds. Interpreted as the first time that is outside of the range.

@param Range       The range to set the end on
- `SetStartFrame(int Start)`  
  Set the starting frame for the specified range. Interpreted as the first valid frame that is inside the range.

@param Range       The range to set the start on
- `SetStartSeconds(float32 Start)`  
  Set the starting time for the specified range in seconds. Interpreted as the first valid time that is inside the range.

@param Range       The range to set the start on
- `FSequencerScriptingRange& opAssign(FSequencerScriptingRange Other)`

---


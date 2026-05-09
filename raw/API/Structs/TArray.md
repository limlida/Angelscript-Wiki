### TArray


**方法**:

- `T& opIndex(int Index)`
- `T opIndex(int Index) const`
- `TArray<T>& opAssign(TArray<T> Other)`
- `bool opEquals(TArray<T> Other) const`
- `Add(T Value)`
- `Append(TArray<T> Other)`
- `Shuffle()`
- `Swap(int FirstIndexToSwap, int SecondIndexToSwap)`  
  Swap the element at index FirstIndexToSwap with the element at index SecondIndexToSwap.

- `MoveAssignFrom(TArray<T>& OtherArray)`  
  Perform a move-assign from the passed in array into this array.
The passed in array will be emptied in the process as its memory is moved over.
- `bool IsValidIndex(int Index) const`
- `T Last(int IndexFromEnd = 0) const`
- `T& Last(int IndexFromEnd = 0)`
- `Insert(T Value, int Index = 0)`
- `bool AddUnique(T Value)`  
  Will first do a check if the object already is in the array.
Returns 'True' if the object is added.

- `Empty(int ReservedSize = 0)`
- `Reset(int ReservedSize = 0)`
- `Reserve(int ReservedSize = 0)`
- `SetNum(int NewNum = 0)`
- `Copy(TArray<T> SourceArray, int SourceIndex, int Count, int TargetIndex = 0)`
- `SetNumZeroed(int NewNum = 0)`
- `int FindIndex(T Value) const`  
  Find the first index that contains an element with the given value.
If no element matches the value, it will return -1.
- `bool Contains(T Value) const`
- `int RemoveSingle(T Value)`
- `int Remove(T Value)`
- `int RemoveSingleSwap(T Value)`
- `int RemoveSwap(T Value)`
- `RemoveAt(int Index)`
- `RemoveAtSwap(int Index)`
- `Sort(bool bDescendingOrder = false)`
- `int Num() const`
- `int Max() const`
- `int64 GetAllocatedSize() const`
- `bool IsEmpty() const`
- `int GetSlack() const`
- `Shrink()`
- `TArrayIterator<T> Iterator()`
- `TArrayConstIterator<T> Iterator() const`

---


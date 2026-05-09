### TOptional


**方法**:

- `TOptional<T>& opAssign(TOptional<T> Other)`
- `TOptional<T>& opAssign(T Value)`
- `bool opEquals(TOptional<T> Other) const`
- `bool IsSet() const`  
  Returns if the optional has a valid value. This must be true in order for Get() or GetValue() to be called.

- `Set(T Value) const`
- `T GetValue() const`  
  Gets a const reference to the optional's set value. IsSet() must return true for this function to be called.

- `T& GetValue()`  
  Gets a non-const reference to the optional's set value. IsSet() must return true for this function to be called.

- `T Get(T DefaultValue) const`  
  If set returns the optional's set value, otherwise returns DefaultValue
- `Reset()`  
  Destruct the value inside the optional and unset it.


---


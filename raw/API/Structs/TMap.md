### TMap


**方法**:

- `V& opIndex(K Key)`
- `V opIndex(K Key) const`
- `Add(K Key, V Value)`
- `bool Contains(K Key) const`
- `bool RemoveAndCopyValue(K Key, V&out OutValue)`
- `bool Remove(K Key)`
- `int Num() const`
- `bool IsEmpty() const`
- `V& FindOrAdd(K Key)`  
  Find the value associated with the key. If none exists, add and return a new value using the default constructor.
- `V& FindOrAdd(K Key, V DefaultValue)`  
  Find the value associated with the key. If none exists, add and return new value set to DefaultValue.
- `bool Find(K Key, V&out OutValue) const`  
  Find the value associated with the key. If none exists, return false. Copies the found value to OutValue.
- `TMap<K,V>& opAssign(TMap<K,V> Other)`
- `bool OrderIndependentCompareEqual(TMap<K,V> Other) const`
- `Empty(int Slack = 0)`
- `Reset()`
- `GetKeys(TArray<K>& OutKeys) const`  
  Generates a list of the keys present in the map and stores them in the given array.
- `GetValues(TArray<V>& OutValues) const`  
  Generates a list of the values present in the map and stores them in the given array.
- `TMapIterator<K,V> Iterator()`
- `TMapConstIterator<K,V> Iterator() const`

---


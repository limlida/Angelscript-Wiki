### FText


**方法**:

- `bool IsEmpty() const`
- `bool IsEmptyOrWhitespace() const`
- `bool IsTransient() const`
- `bool IsCultureInvariant() const`
- `bool IsInitializedFromString() const`
- `bool IsFromStringTable() const`
- `bool IdenticalTo(FText Other, ETextIdenticalModeFlags CompareModeFlags = ETextIdenticalModeFlags :: None) const`
- `int CompareTo(FText Other, ETextComparisonLevel ComparisonLevel = ETextComparisonLevel :: Default) const`
- `int CompareToCaseIgnored(FText Other) const`
- `bool EqualTo(FText Other, ETextComparisonLevel ComparisonLevel = ETextComparisonLevel :: Default) const`
- `bool EqualToCaseIgnored(FText Other) const`
- `FText ToLower() const`
- `FText ToUpper() const`
- `FText& opAssign(FText Other)`
- `FString ToString() const`

---


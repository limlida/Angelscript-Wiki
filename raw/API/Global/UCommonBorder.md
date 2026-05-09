### UCommonBorder


Uses the border style template defined in CommonUI project settings by default

**属性**:

- `FMargin MinimumPadding [The minimum padding we will reduce to when the safezone grows]`
- `TSubclassOf<UCommonBorderStyle> Style [References the border style to use]`
- `bool bReducePaddingBySafezone [Turning this on will cause the safe zone size to be removed from this borders content padding down to the minimum specified]`


**方法**:

- `SetStyle(TSubclassOf<UCommonBorderStyle> InStyle)`

---


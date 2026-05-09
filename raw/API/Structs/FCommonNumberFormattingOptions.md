### FCommonNumberFormattingOptions


**属性**:

- `bool AlwaysSign [Should the numerals always display the sign. IE: "+1"]`
- `int MaximumFractionalDigits [How many fractional digits should be shown at maximum? May cause rounding. IE: HalfFromZero rounding and a maximum of 2 fractional digits means 0.009 -> "0.01".]`
- `int MaximumIntegralDigits [How many integral digits should be shown at maximum? May cause rounding. IE: A maximum of 2 integral digits means 100.0 -> "99".]`
- `int MinimumFractionalDigits [How many fractional digits should be shown at minimum? May cause digit "padding". IE: A minimum of 2 fractional digits means 1.0 -> "1.00".]`
- `int MinimumIntegralDigits [How many integral digits should be shown at minimum? May cause digit "padding". IE: A minimum of 3 integral digits means 1.0 -> "001".]`
- `ERoundingMode RoundingMode [The rounding mode to be used when the actual value can not be precisely represented due to restrictions on the number of integral or fractional digits. See values for details.]`
- `bool UseGrouping [Should the numerals use group separators. IE: "1,000,000"]`


**方法**:

- `FCommonNumberFormattingOptions& opAssign(FCommonNumberFormattingOptions Other)`

---


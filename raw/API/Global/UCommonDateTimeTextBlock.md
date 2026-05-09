### UCommonDateTimeTextBlock


**属性**:

- `FText CustomTimespanFormat [* Supplies a custom timespan format to use if desired
* Supported arguments include {Days}, {Hours}, {Minutes}, and {Seconds}]`
- `bool bCustomTimespanLeadingZeros [* If the custom timespan should use a leading zero for values, ie "02"]`


**方法**:

- `FDateTime GetDateTime() const`
- `SetCountDownCompletionText(FText InCompletionText)`
- `SetDateTimeValue(FDateTime InDateTime, bool bShowAsCountdown, float32 InRefreshDelay = 1.000000)`
- `SetTimespanValue(FTimespan InTimespan)`

---


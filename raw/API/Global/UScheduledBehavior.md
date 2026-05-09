### UScheduledBehavior


Generic object that binds to specified time and then lets you do whatever behavior you need when the time is reached

**属性**:

- `float32 EndTime [time to end scheduled behavior]`
- `float32 StartTime [time to begin scheduled behavior]`
- `bool bDisabled [Will disable the scheduled behavior]`


**方法**:

- `FString DescribeBehavior() const`  
  Debugging tools use this to grab a description of the behavior
- `HandleEnded(float EventTime, float ActualTime, float TimePassedDelta, bool bFiredFromAdvancedTime)`
- `HandleStarted(float EventTime, float ActualTime, float TimePassedDelta, bool bFiredFromAdvancedTime)`

---


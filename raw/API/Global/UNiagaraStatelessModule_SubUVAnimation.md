### UNiagaraStatelessModule_SubUVAnimation


Sets the sub image frame index value based on the select animation mode
The sub image index is a float value where the fractional part can be used to blend frames together

**属性**:

- `ENSMSubUVAnimation_Mode AnimationMode []`
- `int EndFrameRangeOverride []`
- `FNiagaraDistributionRangeInt FrameIndex []`
- `float32 LoopsPerSecond [-Note: Main module has PlaybackMode (Loops / FPS) to choose between loops or frames per second]`
- `int NumFrames []`
- `float32 RandomChangeInterval [-Note: Main module has a few more options
UPROPERTY(EditAnywhere, Category = "Parameters", meta = (EditConditionHides, EditCondition = "AnimationMode == ENSMSubUVAnimation_Mode::Linear"))
bool bRandomStartFrame = false;
int32 StartFrameOffset = 0;
float LoopupIndexScale = 0.0f;]`
- `int StartFrameRangeOverride []`
- `bool bEndFrameRangeOverride_Enabled []`
- `bool bStartFrameRangeOverride_Enabled []`

---


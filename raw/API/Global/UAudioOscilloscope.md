### UAudioOscilloscope


An oscilloscope UMG widget.

Supports displaying waveforms from incoming audio samples.

**属性**:

- `EYAxisLabelsUnit AmplitudeGridLabelsUnit [Define the amplitude grid labels unit.]`
- `float32 AnalysisPeriodMs [The analysis period in milliseconds.]`
- `UAudioBus AudioBus [The audio bus used to obtain audio samples for the oscilloscope]`
- `int ChannelToAnalyze [The channel to analyze with the oscilloscope (only available if PanelLayoutType is set to "Advanced").]`
- `float32 MaxTimeWindowMs [The max time window in milliseconds.]`
- `FAudioOscilloscopePanelStyle OscilloscopeStyle [The oscilloscope panel style]`
- `EAudioPanelLayoutType PanelLayoutType [Show/Hide advanced panel layout.]`
- `EXAxisLabelsUnit TimeGridLabelsUnit [Define the time grid labels unit.]`
- `float32 TimeWindowMs [The time window in milliseconds.]`
- `EAudioOscilloscopeTriggerMode TriggerMode [The trigger detection behavior.]`
- `float32 TriggerThreshold [The trigger threshold position in the Y axis.]`
- `bool bShowAmplitudeGrid [Show/Hide the amplitude grid.]`
- `bool bShowAmplitudeLabels [Show/Hide the amplitude labels.]`
- `bool bShowTimeGrid [Show/Hide the time grid.]`


**方法**:

- `StartProcessing()`  
  Starts the oscilloscope processing.
- `StopProcessing()`  
  Stops the oscilloscope processing.

---


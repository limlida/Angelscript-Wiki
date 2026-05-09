### UAudioVectorscope


A vectorscope UMG widget.

Supports displaying waveforms in 2D (Left channel X axis, Right channel Y axis) from incoming audio samples.

**属性**:

- `UAudioBus AudioBus [The audio bus used to obtain audio samples for the vectorscope]`
- `float32 DisplayPersistenceMs [For how long the audio samples should persist in the screen (in milliseconds).]`
- `int GridDivisions [The number of grid divisions.]`
- `float32 MaxDisplayPersistenceMs [The max where the audio samples should persist in the screen (in milliseconds).]`
- `EAudioPanelLayoutType PanelLayoutType [Show/Hide advanced panel layout.]`
- `float32 Scale [The scale for the displayed audio samples.]`
- `FAudioVectorscopePanelStyle VectorscopeStyle [The vectorscope panel style]`
- `bool bShowGrid [Show/Hide the vectorscope grid.]`


**方法**:

- `StartProcessing()`  
  Starts the vectorscope processing.
- `StopProcessing()`  
  Stops the vectorscope processing.

---


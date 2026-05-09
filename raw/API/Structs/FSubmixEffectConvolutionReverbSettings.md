### FSubmixEffectConvolutionReverbSettings


**属性**:

- `float32 DryVolumeDb [Controls how much of the dry signal is mixed into the output, in Decibels]`
- `float32 SurroundRearChannelBleedDb [Amount of audio to be sent to rear channels in quad/surround configurations]`
- `float32 WetVolumeDb [Controls how much of the wet signal is mixed into the output, in Decibels]`
- `bool bBypass [If true, input audio is directly routed to output audio with applying any effect.]`
- `bool bInvertRearChannelBleedPhase [If true, rear channel bleed sends will have their phase inverted.]`
- `bool bMixInputChannelFormatToImpulseResponseFormat [If true, the submix input audio is downmixed to match the IR asset audio channel
       * format. If false, the input audio's channels are matched to the IR assets
       * audio channels.]`
- `bool bMixReverbOutputToOutputChannelFormat [If true, the reverberated audio is upmixed or downmixed to match the submix
       * output audio format. If false, the reverberated audio's channels are matched
       * to the submixs output audio channels.]`
- `bool bSurroundRearChannelFlip [If true, send Surround Rear Channel Bleed Amount sends front left to back right and vice versa]`


**方法**:

- `FSubmixEffectConvolutionReverbSettings& opAssign(FSubmixEffectConvolutionReverbSettings Other)`

---


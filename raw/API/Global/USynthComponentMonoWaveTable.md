### USynthComponentMonoWaveTable


**属性**:

- `UMonoWaveTableSynthPreset CurrentPreset [The settings asset to use for this synth]`
- `FNumTablesChanged OnNumTablesChanged [Curve array altered]`
- `FOnTableAltered OnTableAltered [Wave Table curve was edited]`


**方法**:

- `float32 GetCurveTangent(int TableIndex)`  
  Get the curve interpolation type (What the curve is doing between keyframes)
- `TArray<float32> GetKeyFrameValuesForTable(float32 TableIndex) const`  
  Get an array of floats that represent the key frames in the requested curve
- `int GetMaxTableIndex() const`  
  Get the number of curves in the wave table. (returns -1 if there is no asset)
- `int GetNumTableEntries()`  
  Start BP functionality // Get the number of table elements from Blueprint
- `NoteOff(float32 InMidiNote)`  
  Starts a new note (retrigs modulators, etc.)
- `NoteOn(float32 InMidiNote, float32 InVelocity)`  
  Starts a new note (retrigs modulators, etc.)
- `RefreshAllWaveTables()`  
  Refresh all wavetables (from Game Thread data)
- `RefreshWaveTable(int Index)`  
  Refresh a particular wavetable (from Game Thread data)
- `SetAmpEnvelopeAttackTime(float32 InAttackTimeMsec)`  
  Set Amp envelope attack time (msec)
- `SetAmpEnvelopeBiasDepth(float32 InDepth)`  
  Set the bias depth of the the Amp envelope
- `SetAmpEnvelopeBiasInvert(bool bInBiasInvert)`  
  Set whether or not the Amp envelope's bias is inverted
- `SetAmpEnvelopeDecayTime(float32 InDecayTimeMsec)`  
  Set Amp envelope decay time (msec)
- `SetAmpEnvelopeDepth(float32 InDepth)`  
  Set the overall depth of the Amp envelope
- `SetAmpEnvelopeInvert(bool bInInvert)`  
  Set whether or not the Amp envelope is inverted
- `SetAmpEnvelopeReleaseTime(float32 InReleaseTimeMsec)`  
  Set Amp envelope release time (msec)
- `SetAmpEnvelopeSustainGain(float32 InSustainGain)`  
  Set Amp envelope sustain gain [0.0, 1.0]
- `bool SetCurveInterpolationType(CurveInterpolationType InterpolationType, int TableIndex)`  
  Set the curve interpolation type (What the curve is doing between keyframes)
This should only be used for live-editing features! (changing the curves at runtime is expensive)
- `bool SetCurveTangent(int TableIndex, float32 InNewTangent)`  
  Set the curve tangent ("Curve depth" between keyframes)
This should only be used for live-editing features! (changing the curves at runtime is expensive)
- `bool SetCurveValue(int TableIndex, int KeyframeIndex, float32 NewValue)`  
  Set a Keyframe value given a Table number and Keyframe number.
         Returns false if the request was invalid.
         NewValue will be clamped from +/- 1.0
- `SetFilterEnvelopeAttackTime(float32 InAttackTimeMsec)`  
  Set Low-Pass Filter envelope attack time (msec)
- `SetFilterEnvelopeBiasDepth(float32 InDepth)`  
  Set Low-Pass Filter envelope bias depth
- `SetFilterEnvelopeBiasInvert(bool bInBiasInvert)`  
  Set Low-Pass Filter envelope bias inversion
- `SetFilterEnvelopeDepth(float32 InDepth)`  
  Set Low-Pass Filter envelope depth
- `SetFilterEnvelopeInvert(bool bInInvert)`  
  Set Low-Pass Filter envelope inversion
- `SetFilterEnvelopenDecayTime(float32 InDecayTimeMsec)`  
  Set Low-Pass Filter envelope decay time (msec)
- `SetFilterEnvelopeReleaseTime(float32 InReleaseTimeMsec)`  
  Set Low-Pass Filter envelope release time (msec)
- `SetFilterEnvelopeSustainGain(float32 InSustainGain)`  
  Set Low-Pass Filter envelope sustain gain
- `SetFrequency(float32 FrequencyHz)`  
  Sets the oscillator's frequency
- `SetFrequencyPitchBend(float32 FrequencyOffsetCents)`  
  Set a frequency offset in cents (for pitch modulation such as the Pitch Bend Wheel)
- `SetFrequencyWithMidiNote(float32 InMidiNote)`  
  Set the oscillator's frequency via midi note number
- `SetLowPassFilterResonance(float32 InNewQ)`  
  Set the Cut-off frequency of the low-pass filter
- `SetPositionEnvelopeAttackTime(float32 InAttackTimeMsec)`  
  Set Position envelope attack time (msec)
- `SetPositionEnvelopeBiasDepth(float32 InDepth)`  
  Set Position envelope bias depth
- `SetPositionEnvelopeBiasInvert(bool bInBiasInvert)`  
  Set Position envelope bias inversion
- `SetPositionEnvelopeDecayTime(float32 InDecayTimeMsec)`  
  Set Position envelope decay time (msec)
- `SetPositionEnvelopeDepth(float32 InDepth)`  
  Set Position envelope envelope depth
- `SetPositionEnvelopeInvert(bool bInInvert)`  
  Set Position envelope envelope inversion
- `SetPositionEnvelopeReleaseTime(float32 InReleaseTimeMsec)`  
  Set Position envelope release time (msec)
- `SetPositionEnvelopeSustainGain(float32 InSustainGain)`  
  Set Position envelope sustain gain
- `SetPosLfoDepth(float32 InLfoDepth)`  
  Set the Modulation depth of the Lfo controlling the Table Position around the current position value
         0.0 = no modulation, 1.0 = current position +/- 0.5 (Lfo + Position result will clamp [0.0, 1.0])
- `SetPosLfoFrequency(float32 InLfoFrequency)`  
  Set frequency of LFO controlling Table Position (in Hz)
- `SetPosLfoType(ESynthLFOType InLfoType)`  
  Set the shape of the Lfo controlling the position
- `SetSustainPedalState(bool InSustainPedalState)`  
  Inform the synth if the sustain pedal is pressed or not
- `SetWaveTablePosition(float32 InPosition)`  
  Sets the wavetable position. Expects a percentage between 0.0 and 1.0

---


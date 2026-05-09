### FModularSynthPreset


**属性**:

- `float32 AttackTime [The amplitude envelope attack time (in ms) [0.0, 10000]]`
- `float32 ChorusDepth [The depth of the chorus effect [0.0, 1.0]]`
- `float32 ChorusFeedback [The amount of feedback in the chorus effect [0.0, 1.0]]`
- `float32 ChorusFrequency [The chorus LFO frequency [0.0, 20.0]]`
- `float32 DecayTime [The amplitude envelope decay time (in ms)[0.0, 10000]]`
- `ESynthFilterAlgorithm FilterAlgorithm [The output filter circuit/algorithm type (one-pole ladder, ladder, state-variable)]`
- `float32 FilterFrequency [The output filter cutoff frequency (hz) [0.0, 20000.0]]`
- `float32 FilterQ [The output filter resonance (Q) [0.5, 10]]`
- `ESynthFilterType FilterType [The output filter type (lowpass, highpass, bandpass, bandstop)]`
- `float32 GainDb [The overall gain to use for the synthesizer in dB [-90.0, 20.0]]`
- `float32 LFO1Frequency [The frequency to use for LFO 1 (in hz) [0.0, 50.0]]`
- `float32 LFO1Gain [The linear gain to use for LFO 1 [0.0, 1.0]]`
- `ESynthLFOMode LFO1Mode [The mode to use for LFO 1]`
- `ESynthLFOPatchType LFO1PatchType [The built-in patch type to use for LFO 1 (you can route this to any patchable parameter using the Patches parameter)]`
- `ESynthLFOType LFO1Type [The type of LFO to use for LFO 1]`
- `float32 LFO2Frequency [The frequency to use for LFO 2 (in hz) [0.0, 50.0]]`
- `float32 LFO2Gain [The linear gain to use for LFO 2 [0.0, 1.0]]`
- `ESynthLFOMode LFO2Mode [The mode to use for LFO 2]`
- `ESynthLFOPatchType LFO2PatchType [The built-in patch type to use for LFO 2 (you can route this to any patchable parameter using the Patches parameter)]`
- `ESynthLFOType LFO2Type [The type of LFO to use for LFO 2]`
- `ESynthModEnvBiasPatch ModEnvBiasPatchType [The built-in patch type for the envelope modulator bias output. Bias is when the envelope output is offset by the sustain gain.]`
- `ESynthModEnvPatch ModEnvPatchType [The built-in patch type for the envelope modulator]`
- `float32 ModulationEnvelopeAttackTime [The modulation envelope attack time (in ms) [0.0, 10000]]`
- `float32 ModulationEnvelopeDecayTime [The modulation envelope decay time (in ms) [0.0, 10000]]`
- `float32 ModulationEnvelopeDepth [The "depth" (i.e. how much) modulation envelope to use. This scales the modulation envelope output. [0.0, 1.0]]`
- `float32 ModulationEnvelopeReleaseTime [The modulation envelope release time (in ms) [0.0, 10000]]`
- `float32 ModulationEnvelopeSustainGain [The modulation envelope sustain gain (linear gain) [0.0, 1.0]]`
- `float32 Osc1Cents [The cents (hundreds of a semitone) of oscillator 1. [-100.0, 100.0]]`
- `float32 Osc1Gain [The linear gain of oscillator 1 [0.0, 1.0]]`
- `float32 Osc1Octave [The octave of oscillator 1. [-8.0, 8.0]]`
- `float32 Osc1PulseWidth [The pulsewidth of oscillator 1 (when using a square wave type oscillator). [0.0, 1.0]]`
- `float32 Osc1Semitones [The semi-tones of oscillator 1. [-12.0, 12.0]]`
- `ESynth1OscType Osc1Type [What type of oscillator to use for oscillator 1]`
- `float32 Osc2Cents [The cents (hundreds of a semitone) of oscillator 2. [-100.0, 100.0]]`
- `float32 Osc2Gain [The linear gain of oscillator 2 [0.0, 1.0]]`
- `float32 Osc2Octave [The octave of oscillator 2. [-8.0, 8.0]]`
- `float32 Osc2PulseWidth [The pulsewidth of oscillator 2 (when using a square wave type oscillator). [0.0, 1.0]]`
- `float32 Osc2Semitones [The semi-tones of oscillator 2. [-12.0, 12.0]]`
- `ESynth1OscType Osc2Type [What type of oscillator to use for oscillator 2]`
- `float32 Pan [The stereo pan to use. 0.0 is center. -1.0 is left, 1.0 is right.]`
- `TArray<FEpicSynth1Patch> Patches [The modular synth patch cords to use for the synth. Allows routing the LFO1/LFO2 and Modulation Envelope to any patchable destination.]`
- `float32 Portamento [The amount of portamento to use, which is the amount of pitch sliding from current note to next [0.0, 1.0]]`
- `float32 ReleaseTime [The amplitude envelope release time (in ms) [0.0, 10000]]`
- `float32 Spread [The amount of stereo spread to use between oscillator 1 and oscillator 2 [0.0, 1.0]]`
- `float32 StereoDelayFeedback [The amount of feedback in the stereo delay line [0.0, 1.0]]`
- `ESynthStereoDelayMode StereoDelayMode [The stereo delay mode of the synth]`
- `float32 StereoDelayRatio [The ratio between left and right stereo delay lines (wider value is more separation) [0.0, 1.0]]`
- `float32 StereoDelayTime [The stereo delay time (in ms) [0.0, 2000.0]]`
- `float32 StereoDelayWetlevel [The output wet level to use for the stereo delay time [0.0, 1.0]]`
- `float32 SustainGain [The amplitude envelope sustain amount (linear gain) [0.0, 1.0]]`
- `bool bChorusEnabled [Whether or not the chorus effect is enabled]`
- `bool bEnableOscillatorSync [Whether or not oscillator sync is enabled. Oscillator sync forces oscillator 2's phase to align with oscillator 1's phase.]`
- `bool bEnablePolyphony [Whether or not to allow multiple synth voices.]`
- `bool bEnableUnison [Enables forcing the oscillators to have no stereo spread.]`
- `bool bInvertModulationEnvelope [Whether or not to invert the modulation envelope]`
- `bool bInvertModulationEnvelopeBias [Whether or not to invert the modulation envelope bias output]`
- `bool bLegato [Whether or not to use legato mode.]`
- `bool bRetrigger [Whether or not to use retrigger mode.]`
- `bool bStereoDelayEnabled [Whether or not stereo delay is enabled on the synth]`


**方法**:

- `FModularSynthPreset& opAssign(FModularSynthPreset Other)`

---


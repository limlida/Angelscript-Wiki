### FAudioMaterialEnvelopeSettings


**属性**:

- `float32 AttackCurve [Curve of the envelopes attack stage.
Attack is the time taken for the rise of the level from zero to a given value.]`
- `float32 AttackTime [Time the Value reaches the Attack stage.
Attack is the time taken for the rise of the level from zero to a given value.]`
- `float32 AttackValue [Value of the envelopes attack stage.
Attack is the time taken for the rise of the level from zero to a given value.]`
- `float32 DecayCurve [Curve of the envelopes Decay stage.
Decay is the time taken for the level to reduce from the attack level to the sustain level.]`
- `float32 DecayTime [Time that takes to reach the level of the Sustain stage.
Decay is the time taken for the level to reduce from the attack level to the sustain level.]`
- `EAudioMaterialEnvelopeType EnvelopeType [The Type of the envelope curve.]`
- `float32 ReleaseCurve [Curve of the envelopes Release stage.
Release is the time taken for the level to decay from sustain to zero.]`
- `float32 ReleaseTime [Time that takes to reach zero level
Release is the time taken for the level to decay from sustain to zero.]`
- `float32 SustainValue [Value of the envelopes Sustain stage.
Sustain is the level maintained until release stage.]`


**方法**:

- `FAudioMaterialEnvelopeSettings& opAssign(FAudioMaterialEnvelopeSettings Other)`

---


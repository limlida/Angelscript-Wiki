### FMetasoundAnalyzerAnimationSettings


**属性**:

- `EMetasoundActiveAnalyzerEnvelopeDirection EnvelopeDirection [Whether analyzer envelopes draw from a source output (default) or from the destination input. From the destination input may not
give the expected illusion of audio processing flowing left-to-right, but results in a waveform with earlier events on the left
and later on the right (like a traditional timeline with a moving play head).]`
- `float32 EnvelopeSpeed [Speed of default envelope analyzer drawing over wire when connection analyzer is active, where 0 is full visual history (slowest progress) and 1 is no visual history (fastest progress).]`
- `float32 EnvelopeWireThickness [Thickness of default envelope analyzer wire thickness when connection analyzer is active.]`
- `float32 NumericWireThickness [Thickness of default numeric analyzer wire thickness when connection analyzer is active.]`
- `float32 WireScalarMax [Maximum height scalar of wire signal analyzers (ex. audio, triggers).]`
- `float32 WireScalarMin [Minimum height scalar of wire signal analyzers (ex. audio, triggers).]`
- `bool bAnimateConnections [Whether or not animated connections are enabled.]`


**方法**:

- `FMetasoundAnalyzerAnimationSettings& opAssign(FMetasoundAnalyzerAnimationSettings Other)`

---


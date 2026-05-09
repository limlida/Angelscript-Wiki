### UPatternTool_TranslationSettings


Settings for Per Element Translation in the Pattern Tool

**属性**:

- `FVector EndTranslation [Translation applied to last Pattern Element for Interpolated translation]`
- `FVector Jitter [Upper bound of the range which is sampled to randomly translate each Pattern Element if Jitter is true]`
- `FVector StartTranslation [Translation applied to all Pattern Elements, or to first Pattern Element for Interpolated translation]`
- `bool bInterpolate [If true, Translation is linearly interpolated between StartTranslation and Translation values]`
- `bool bJitter [If true, Translation at each Pattern Element is offset by a uniformly chosen random value in the range of [-TranslationJitterRange, TranslationJitterRange]]`

---


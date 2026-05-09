### FSubtitleAssetData


**属性**:

- `FString Comment [Author comments, editor-only.]`
- `float32 Duration [Time to display in seconds.
Defaulted to 3 seconds so when adding new subtitles it's not required to enter a placeholder Duration.
Duration can be be set by ingestion pipelines when importing Subtitles in bulk]`
- `float32 Priority [The priority of the subtitle.  Defaults to 1.  Higher values will play instead of lower values.]`
- `float32 StartOffset [Some subtitles have a delay before they're allowed to be displayed (primarily from the legacy system).
StartOffset measures how long in Seconds, after queuing, before the subtitle is allowed to enter the active subtitles queue.
ESubtitleTiming::ExternallyTimed does not effect this initial delay.]`
- `ESubtitleDurationType SubtitleDurationType [Whether to automatically unqueue the subtitle using an associated Sound, or to use the duration supplied below.]`
- `ESubtitleType SubtitleType [Subtitle type for type-specific rendering.]`
- `FText Text [The text to appear in the subtitle.]`


**方法**:

- `FSubtitleAssetData& opAssign(FSubtitleAssetData Other)`

---


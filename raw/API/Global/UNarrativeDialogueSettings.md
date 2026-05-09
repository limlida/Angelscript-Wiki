### UNarrativeDialogueSettings


Runtime dialogue settings for narrative

**属性**:

- `float32 DialogueLineAudioSilence [Optional buffer of silence added to the end of dialogue lines]`
- `float32 LettersPerSecondLineDuration [If a dialogue doesn't have audio supplied, how long should the text be displayed on the screen for? Lower letters per minute means player gets more time]`
- `float32 MinDialogueTextDisplayTime [How long should the text be displayed for at a minimum? Since default letters per minute is 25 this prevents a reply like "no" from being played too quickly]`
- `TArray<FLinearColor> SpeakerColors [Default speaker colors]`
- `bool bAutoSelectSingleResponse [If there is only one player response available, should we autoselect it, regardless of whether bAutoSelect is checked?]`
- `bool bEnableVerticalWiring [Expiremental - won't autoarrange old dialogues, and you'll need to move your nodes into the correct position yourself.
Also makes dialogue nodes sort themselves from left to right instead of top to bottom]`

---


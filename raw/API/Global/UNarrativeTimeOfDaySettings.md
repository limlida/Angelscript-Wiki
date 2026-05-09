### UNarrativeTimeOfDaySettings


Settings for the Narrative time of day system in the game state.

**属性**:

- `float32 DayLengthMinutes [DEPRECATED - Moved to NarrativeGameState settings.Day length in minutes, if a BP_NarrativeSky is in the level.]`
- `FTimeOfDay DefaultTimeOfDay [DEPRECATED - Moved to NarrativeGameState settings.Default time of day we'll start the time at when the game state is initialized.]`
- `float32 NightLengthMinutes [DEPRECATED - Moved to NarrativeGameState settings.Night length in minutes, if a BP_NarrativeSky is in the level.]`
- `FTimeOfDay SunriseTime [DEPRECATED - Moved to NarrativeGameState settings.The time the sun should rise - if you have a Narrative sky in the level it will use this]`
- `FTimeOfDay SunsetTime [DEPRECATED - Moved to NarrativeGameState settings.The time the sun should set - if you have a Narrative sky in the level it will use this]`
- `bool bDynamicTimeOfDay [DEPRECATED - Moved to NarrativeGameState settings. If true the time of day will be updated on tick using the Day/NightLengthMinutes values]`

---


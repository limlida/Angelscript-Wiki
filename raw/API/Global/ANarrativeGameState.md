### ANarrativeGameState


Default Game State class for Narrative pro.

**属性**:

- `float32 DayLengthMinutes [Day length in minutes, if a BP_NarrativeSky is in the level.]`
- `FTimeOfDay DefaultTimeOfDay [Default time of day we'll start the time at when the game state is initialized.]`
- `TMap<FGameplayTag,FFactionAttitudeData> FactionAllianceMap [Allows for nice efficient lookups for which alliance is friendly, netutral, enemies of others.Also marked savegame so alliances will be preserved through play sessions.
       Since this is marked savegame, narrative will remember which factions are friendly, neutral, hostile towards others!]`
- `float32 NightLengthMinutes [Night length in minutes, if a BP_NarrativeSky is in the level.]`
- `FOnFactionAttitudeChanged OnFactionAttitudeChanged [Called when a factions attitude towards another faction changes - bots bind this to recheck if they are perceiving someone who has become a hostile]`
- `FTimeOfDay SunriseTime [The time the sun should rise - if you have a Narrative sky in the level it will use this]`
- `FTimeOfDay SunsetTime [The time the sun should set - if you have a Narrative sky in the level it will use this]`
- `bool bDynamicTimeOfDay [If true the time of day will be updated on tick using the Day/NightLengthMinutes values]`


**方法**:

- `AdvanceTimeOfDay(float32 TimeToAdvance)`  
  Manually advance the time of day, where 100 = 1 hour of time, ie 500 = advance time by 5 hours, 4800 = advance time by 2 days, etc.
       Note that the time of day won't actually change until the next frame.
- `AdvanceToTimeOfDay(float32 DesiredTime)`  
  Advances forward to the specified time of day
- `float32 GetAccumulatedTime() const`  
  Return the total accumulated time.
- `ETeamAttitude GetFactionAttitudeTowardsFaction(FGameplayTag SourceFaction, FGameplayTag TargetFaction)`  
  Check a factions attitude towards another faction
- `ETeamAttitude GetFactionsAttitudeTowardsFactions(FGameplayTagContainer SourceFactions, FGameplayTagContainer TargetFactions)`  
  Get a container of factions attitudes towards another container of factions. In any are hostile, we'll return hostile. If none were hostile
       and at least one were friendly, we'll return friendly. Otherwise we'll return neutral. You can override this if you need to change that behaviour.
- `float32 GetTimeOfDay() const`  
  Return the time of day from 0-2400.
- `float32 GetTimeOfDayAdvanceSpeed() const`  
  Check whether the sun is up or if its nighttime
- `bool IsDayTime() const`  
  Check whether the sun is up or if its nighttime
- `SetFactionAttitude(FGameplayTag SourceFaction, FGameplayTag TargetFaction, ETeamAttitude NewAttitude)`  
  Set a factions attitude towards another given faction

---


### UNarrativeCombatDeveloperSettings


Combat related developer settings

**属性**:

- `TMap<ENarrativeGameplayDifficulty,int> AvailableAttackTokens [/ The amount of attack tokens to grant the player on each difficulty mode.]`
- `int MeleeCombatAnimSampleAmount [/ We'll sample this number of anim samples when reading through a melee attack. Lower numbers give better performance but less accuracy.]`
- `TMap<ENarrativeGameplayDifficulty,float32> NPCAttackFrequencies [/ AI use this to decide how often they should fire at each difficulty. This is a multiplier of RateOfFire. IE 3.0 = attack at 3x the rate of fire]`
- `float32 NotifyTeammatesToFightRange [If an NPC starts attacking an enemy, their teammates within this amount of distance will be notified to attack also.
      ie You can turn this number down to prevent the whole city getting into fights where you might only want teammates within 50 meters!]`
- `float32 StealTokenProximity [/ Token stealers must be this percent of the existing distance to steal a token. IE 0.2 = steal a token if we are 0.2x the distance from the target as an existing token.]`
- `float32 TokenStealableAgeSeconds [Tokens more than this many seconds old can be stolen  - nice way of giving others a chance to attack for a bit.]`
- `bool bAllowFriendlyFire [/ Whether or not we'll allow aligned factions to damage each other.]`
- `bool bEnableDamageNumberOnSelf [/If true, damage dealt popups will appear above your own player as you take damage.]`
- `bool bEnableDamageNumbers [/If true, damage dealt popups will appear above enemies you deal damage to.]`


**方法**:

- `float32 GetAttackFrequencyForDifficulty(ENarrativeGameplayDifficulty Difficulty) const`

---


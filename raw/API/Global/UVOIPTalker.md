### UVOIPTalker


**属性**:

- `FVoiceSettings Settings [Configurable settings for this player's voice. When set, this will update the next time the player speaks.]`


**方法**:

- `BPOnTalkingBegin(UAudioComponent AudioComponent)`  
  Blueprint native event for when this player starts speaking.
- `BPOnTalkingEnd()`  
  Blueprint native event for when this player stops speaking.
- `float32 GetVoiceLevel()`  
  Get the current level of how loud this player is speaking. Will return 0.0
if player is not talking.
- `RegisterWithPlayerState(APlayerState OwningState)`  
  This function sets up this talker with a specific player.
It is necessary to use this to properly control a specific player's voice
and receive events.

---


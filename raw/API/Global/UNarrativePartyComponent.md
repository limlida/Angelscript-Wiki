### UNarrativePartyComponent


A Narrative component intended to be shared by multiple clients. This allows for some very cool functionality, teammates
can play quests and dialogues together with each other. Use AddPartyMember and RemovePartyMember to setup your party.

QUESTS: Quests began on the party component will be shown on all party members UI, and any player in the party can complete quest tasks.

DIALOGUE: Dialogues began on the party component will begin for all players, and all players will see the dialogue in sync - if a player selects
a dialogue option all party members will see that player say the line - this behaviour can be modified in the components settings.

You should put this component on an actor that replicates to all of your team members. The Game State is a great place for this,
however if your game requires multiple different parties you'll want to make a ASquad etc that derives AInfo to hold all your team members
and manage them, and put a party component there instead of the game state.

**属性**:

- `EPartyDialogueControlPolicy PartyDialogueControlPolicy [Defines how a party goes about selecting replies - currently just enforced by the UI, isn't actually authed by server]`
- `TArray<APlayerState> PartyMemberStates [Narrative Components exist on peoples player controllers, and so there isn't a nice way for people in the party to access
      each others pawns/playerstates via PartyMembers array, and so this array exists to solve that. We store PStates because pawns can change
      possession but PState->GetPawn() will always give us the current valid pawn]`
- `TArray<UTalesComponent> PartyMembers [All of the players in the party]`


**方法**:

- `bool AddPartyMember(UTalesComponent Member)`  
  [server] Add a member to the party.  Return true if successful.
- `UTalesComponent GetPartyLeader() const`  
  Return the party leader (only works on server)
- `TArray<UTalesComponent> GetPartyMembers() const`  
  Return the members in the party
- `TArray<APlayerState> GetPartyMemberStates() const`  
  Return the members PlayerStates in the party
- `bool IsPartyLeader(APlayerState Member)`  
  Return whether or not we're the leader of our party. Return true if we're not in a party as we're essentially the leader in that case
- `bool RemovePartyMember(UTalesComponent Member)`  
  [server] Remove a member from the party. Return true if successful, false if player wasn't in party etc

---


### AGameState


GameState is a subclass of GameStateBase that behaves like a multiplayer match-based game.
It is tied to functionality in GameMode.

**属性**:

- `int ElapsedTime [Elapsed game time since match has started.]`
- `FName MatchState [What match state we are currently in]`
- `FName PreviousMatchState [Previous map state, used to handle if multiple transitions happen per frame]`

---


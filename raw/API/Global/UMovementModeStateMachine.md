### UMovementModeStateMachine


- Any movement modes registered are co-owned by the state machine
- There is always an active mode, falling back to a do-nothing 'null' mode
- Queuing a mode that is already active will cause it to exit and re-enter
- Modes only switch during simulation tick
---


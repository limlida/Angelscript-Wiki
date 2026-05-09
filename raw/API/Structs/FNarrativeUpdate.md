### FNarrativeUpdate


UQuests aren't replicated the proper UE way (replicated flag on objects), because this is really complex and hasn't been very successful in testing.
It would also hog a lot more network performance, as quests often have hundreds of states, tasks, and branches,
all of which would be sending network updates and replicating.

So in the meantime, the server authoritatively Begins, Forgets, Restarts, Updates quests etc, and then informs the client about
these changes via the FNarrativeUpdate stream so the clients can "replay" these actions in the order they happened and keep sync with the server.

Using this mechanism instead of RPCs ensures the updates are sent in the correct order. This is really important
for ensuring the client correctly stays in sync with the server.

**方法**:

- `FNarrativeUpdate& opAssign(FNarrativeUpdate Other)`

---


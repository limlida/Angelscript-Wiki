### FPoseSearchInteractionAvailabilityEx


Experimental, this feature might be removed without warning, not for production use

**属性**:

- `float32 BroadPhaseRadius [the associated character to this FPoseSearchInteractionAvailability will partecipate in an interaction only if all the necessary roles gest assigned to character within BroadPhaseRadius centimeters]`
- `float32 BroadPhaseRadiusIncrementOnInteraction [during interaction the BroadPhaseRadius will be incremented by BroadPhaseRadiusIncrementOnInteraction to create
geometrical histeresys, where it's harder for actors to get into interaction rather than staying in interaction]`
- `UPoseSearchDatabase Database [Database describing the interaction. It'll contains multi character UMultiAnimAsset and a schema with multiple skeletons with associated roles]`
- `TArray<FName> RolesFilter [roles the character is willing to take to partecipate in this interaction. If empty ANY of the Database roles can be taken]`
- `FName Tag [in case this availability Database is valid (not null), Tag (if IsTagValid()) is used to flag the Database with a specific name. Different availabilities can share the same Tag.
in case this availability Database is NOT valid, we use the valid Tag to figure out all the possible databases that can be assigned to this availability from all the published availabilities.
The reason behind Tag is, for example, to be able to have NPCs been able to interact with a main character (MC), without the MC having a direct dependency to the database used
for the interaction allowing those NPCs to be contextually loaded/unloaded, streamed in/out, with the obvious advantages for the the memory managment of the "payload" database.
Another reason for Tag, is to facilitate the setup of interactions, where the MC have to publish only one availability with its own assigned Role (in RolesFilter)
automatically contextually resolved in multiple different types of possible databases: it could be MC-NPC, MC-Vehicle, MC-Whatever]`
- `int TickPriority [the Actor with the higher TickPriority of any Availability request will be elected as the MainActor of the interaction island (containing all the actors that could interact with each other)
the main Actor will tick first and all the other interacting actors will tick after in a concurrently from each other. TickPriority is useful if your setup is already enforcing tick dependency
between actors, and the motion matching interaction system needs to play nicely with them.]`
- `bool bDisableCollisions [if true, the system will disable collsions between interacting characters]`


**方法**:

- `FPoseSearchInteractionAvailabilityEx& opAssign(FPoseSearchInteractionAvailabilityEx Other)`

---


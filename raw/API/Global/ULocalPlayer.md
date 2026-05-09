### ULocalPlayer


Each player that is active on the current client/listen server has a LocalPlayer.
It stays active across maps, and there may be several spawned in the case of splitscreen/coop.
There will be 0 spawned on dedicated servers.

**方法**:

- `UWorld GetWorld() const`
- `UGameInstance GetGameInstance() const`
- `int GetControllerId() const`

---


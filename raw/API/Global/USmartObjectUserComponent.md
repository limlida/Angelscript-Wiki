### USmartObjectUserComponent


Smart Object User Component defines common settings for a Smart Object user.

The validation settings for entries and exits are separate to allow to have more lax exit settings.
For example the entry settings might prevent to use Smart Object slots which are on water, but we could allow to exit in water.

**属性**:

- `TSubclassOf<USmartObjectSlotValidationFilter> ValidationFilter [Validation filter used for entering testing entries for a Smart Object slot.]`

---


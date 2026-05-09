### USmartObjectSlotValidationFilter


Class used to define settings for Smart Object navigation and collision validation.
It is possible to specify two set of validation parameters. The one labeled "entry" is used for validating
entry locations and other general collision validation.
A separate set can be defined for checking exit locations. This allows the exit location checking to be relaxed.
E.g. we might not allow to enter the SO on water area, but it is fine to exit on water.
The values of the CDO are used, the users are expected to derive from this class to create custom settings.

**属性**:

- `FSmartObjectSlotValidationParams EntryParameters [Parameters to use for validating entry locations or general collision validation.]`
- `FSmartObjectSlotValidationParams ExitParameters [Parameters to use for validating exit locations. The separate set allows to specify looser settings on exits.]`
- `bool bUseEntryParametersForExit [If true, use separate settings for validating exit locations.]`

---


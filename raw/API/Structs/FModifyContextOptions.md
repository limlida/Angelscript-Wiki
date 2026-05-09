### FModifyContextOptions


Passed in as params for Adding/Remove input contexts

**属性**:

- `bool bForceImmediately [The mapping changes will be applied synchronously, rather than at the end of the frame,
making them available to the input system on the same frame.

This is not recommended to be set to true if you are adding multiple mapping contexts
as it will have poor performance.

Default: False]`
- `bool bIgnoreAllPressedKeysUntilRelease [If true, then any keys that are "down" or "pressed" during the rebuild of control mappings will
not be processed by Enhanced Input until after they are "released".

For example, if you are adding a mapping context with a key mapping to "X",
and the player is holding down "X" while that IMC is added,
there will not be a "Triggered" event until the player releases "X" and presses it again.

If this is set to false for the above example, then the "Triggered" would fire immediately
as soon as the IMC is finished being added.

Default: True

Note: This will only do something for keys bound to boolean Input Action types.
Note: This includes all keys that the player has pressed, not just the keys that are previously mapped in Enhanced Input before
the call to RebuildControlMappings.]`
- `bool bNotifyUserSettings [If true, then this Mapping Context will be registered or unregistered with the
Enhanced Input User Settings on this subsystem, if they exist.

Default: False

Note: You need to enable and configure your UEnhancedInputUserSettings class in the project
settings for this to do anything.]`


**方法**:

- `FModifyContextOptions& opAssign(FModifyContextOptions Other)`

---


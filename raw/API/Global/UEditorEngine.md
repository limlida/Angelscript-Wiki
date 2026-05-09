### UEditorEngine


Engine that drives the Editor.
Separate from UGameEngine because it may have much different functionality than desired for an instance of a game itself.

**属性**:

- `FSoftClassPath ActorGroupingUtilsClassName []`
- `FString GameCommandLine []`
- `FString InEditorGameURLOptions [Additional per-user/per-game options set in the .ini file. Should be in the form "?option1=X?option2?option3=Y"]`
- `bool UseAxisIndicator`
- `bool UseSizingBox [Advanced.]`
- `bool bEnableSocketSnapping [If true, socket snapping is enabled in the main level viewports.]`

---


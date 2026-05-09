### UMovieSceneCVarSection


A CVar section is responsible for applying a user-supplied value to the specified cvar, and then restoring the previous value after the section ends.

**属性**:

- `TArray<FMovieSceneConsoleVariableCollection> ConsoleVariableCollections [Array of console variable preset assets that this track should operate on]`
- `FMovieSceneCVarOverrides ConsoleVariables [The name of the console variable and the value, separated by ' ' or '=', ie: "foo.bar=1" or "foo.bar 1".]`


**方法**:

- `FString GetString() const`
- `SetFromString(FString InString)`

---


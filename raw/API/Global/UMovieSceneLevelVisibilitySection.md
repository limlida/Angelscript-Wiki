### UMovieSceneLevelVisibilitySection


A section for use with the movie scene level visibility track, which controls streamed level visibility.

**属性**:

- `TArray<FName> LevelNames [The short names of the levels who's visibility is controlled by this section.]`
- `ELevelVisibility Visibility [Whether or not the levels in this section should be visible or hidden.]`


**方法**:

- `TArray<FName> GetLevelNames() const`
- `ELevelVisibility GetVisibility() const`
- `SetLevelNames(TArray<FName> InLevelNames)`
- `SetVisibility(ELevelVisibility InVisibility)`

---


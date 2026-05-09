### UTreeSkill


Represents a skill in the skill tree. For example Combat, Sneak, etc. Each game will implement their own skills by subclassing this!

**属性**:

- `TArray<FPerkConfig> Perks [All of the perks this skill should have go in here.]`
- `FText SkillDescription [The description of this skill.]`
- `FText SkillDisplayName [The display name of this skill.]`
- `int SkillLevel [The level this skill is at]`

---


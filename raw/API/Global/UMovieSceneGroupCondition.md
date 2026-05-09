### UMovieSceneGroupCondition


Condition class that allows the grouping of other conditions using 'and', 'or', or 'xor'.

**属性**:

- `EMovieSceneGroupConditionOperator Operator [Which operator to use in evaluating the group condition]`
- `TArray<FMovieSceneConditionContainer> SubConditions [List of sub-conditions to evaluate as part of this condition. Condition results will be combined together using ConditionOperator]`

---


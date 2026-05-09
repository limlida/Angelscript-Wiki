### FMovieSceneSequenceTickInterval


Structure defining a concrete tick interval for a Sequencer based evaluation

**属性**:

- `float32 EvaluationBudgetMicroseconds [Defines an approximate budget for evaluation of this sequence (and any other sequences with the same tick interval)]`
- `float32 TickIntervalSeconds [Defines the rate at which the sequence should update, in seconds]`
- `bool bAllowRounding [When true, allow the sequence to be grouped with other sequences based on Sequencer.TickIntervalGroupingResolutionMs. Otherwise the interval will be used precisely.]`
- `bool bTickWhenPaused [When true, the sequence will continue to tick and progress even when the world is paused]`


**方法**:

- `FMovieSceneSequenceTickInterval& opAssign(FMovieSceneSequenceTickInterval Other)`

---


### FRandomizeColumn


The Randomize column will randomly select between whatever values have passed all filters.
 The value specified in each cell is a probability weighting for the row.
  A row with a value twice as likely as another will be twice as likely to be selected.
 Using the optional RandomizationContext binding, it can track the most recent selection, and reduce the probability of randomly picking the same entry twice

**属性**:

- `float32 DefaultRowValue [DefaultRowValue will be assigned to cells when new rows are created]`
- `float32 EqualCostThreshold [When columns with scoring are used, randomize will pick from among all rows that have a cost nearly equal to the minumum cost, using this threshold]`
- `FInstancedStruct InputValue [Optional reference to a ChooserRandomizationContext struct. If bound, this is used to store the most recent selection (for each Choosers referencing it - you only need to create one variable per Character or context), for use with RepateProbabilityMultiplier to reduce the chance of selecting the same entry twice.]`
- `TArray<float32> RepeatProbabilityMultipliers [Multiplies the weight of recently chosen results, where the number of entries in this array indicates how many recently selected choices to remember (A value of zero means to avoid repeating an entry unless it's the only choice). You must bind a RandomizationContext struct for this feature to work.]`
- `bool bDisabled []`


**方法**:

- `FRandomizeColumn& opAssign(FRandomizeColumn Other)`

---


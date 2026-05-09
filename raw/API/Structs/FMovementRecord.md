### FMovementRecord


Accounting record of a move as it is processed.
Moves are composed of substeps, and these can be marked to indicate how they influence the final collapsed move.
Relevancy means the substep (or part thereof) is contributing to the reflected movement state. Example: a character moves forward across a slightly
irregular sidewalk, and then is adjusted downward to keep it sticking closely to the sidewalk. The forward move is a relevant substep, while the vertical heigh adjustment is not.

**方法**:

- `FMovementRecord& opAssign(FMovementRecord Other)`

---


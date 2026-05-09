### UNiagaraDataInterfaceGrid3D


**属性**:

- `float32 CellSize [World space size of a cell]`
- `bool ClearBeforeNonIterationStage [Option to clear the buffer prior to a stage where the iteration count does not match the grid resolution.  Useful for stages where one wants to do sparse writes
and accumulate values.]`
- `FIntVector NumCells [Number of cells]`
- `int NumCellsMaxAxis [Number of cells on the longest axis]`
- `ESetResolutionMethod SetResolutionMethod [Method for setting the grid resolution]`
- `FVector WorldBBoxSize [World size of the grid]`

---


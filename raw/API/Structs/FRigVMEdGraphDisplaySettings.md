### FRigVMEdGraphDisplaySettings


**属性**:

- `int AverageFrames [If you set this to more than 1 the results will be averaged across multiple frames]`
- `FLinearColor MaxDurationColor [The color of the slowest instruction / node]`
- `float MaxMicroSeconds [The duration in microseconds of the slowest instruction / node]`
- `FLinearColor MinDurationColor [The color of the fastest instruction / node]`
- `float MinMicroSeconds [The duration in microseconds of the fastest instruction / node]`
- `int NodeRunLimit [A upper limit for counts for nodes used for debugging.
If a node reaches this count a warning will be issued for the
node and displayed both in the execution stack as well as in the
graph. Setting this to <= 1 disables the warning.
Note: The count limit doesn't apply to functions / collapse nodes.]`
- `int NodeRunLowerBound [A lower limit for counts for nodes used for debugging.
Any node lower than this count won't show the run count.]`
- `ERigVMTagDisplayMode TagDisplayMode [The color of the slowest instruction / node]`
- `bool bAutoDetermineRange []`
- `bool bShowNodeInstructionIndex [When enabled shows the first node instruction index
matching the execution stack window.]`
- `bool bShowNodeRunCounts [When enabled shows the node counts both in the graph view as
we as in the execution stack window.
The number on each node represents how often the node has been run.
Keep in mind when looking at nodes in a function the count
represents the sum of all counts for each node based on all
references of the function currently running.]`


**方法**:

- `FRigVMEdGraphDisplaySettings& opAssign(FRigVMEdGraphDisplaySettings Other)`

---


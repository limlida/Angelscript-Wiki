### UComputeGraphComponent


Component which holds a context for a UComputeGraph.
This object binds the graph to its data providers, and queues the execution.

**属性**:

- `UComputeGraph ComputeGraph [The Compute Graph asset.]`


**方法**:

- `CreateDataProviders(int InBindingIndex, UObject InBindingObject)`  
  Create all the Data Provider objects for a given binding object of the ComputeGraph.
- `DestroyDataProviders()`  
  Destroy all associated DataProvider objects.
- `QueueExecute()`  
  Queue the graph for execution at the next render update.

---


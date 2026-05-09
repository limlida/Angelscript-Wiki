### UComputeGraph


Class representing a Compute Graph.
This holds the basic topology of the graph and is responsible for linking Kernels with Data Interfaces and compiling the resulting shader code.
Multiple Compute Graph asset types can derive from this to specialize the graph creation process.
For example the Animation Deformer system provides a UI for creating UComputeGraph assets.
---


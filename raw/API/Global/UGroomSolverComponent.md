### UGroomSolverComponent


Groom solver component in which groom component could be added to be solver together

**属性**:

- `UMeshDeformerInstanceSettings DeformerSettings [Object containing instance settings for the MeshDeformer.]`
- `UMeshDeformer MeshDeformer [Graph deformer solver the component is using]`
- `FDataflowSimulationAsset SimulationAsset [Solver dataflow asset used to advance in time]`
- `FGroomSolverSettings SolverSettings [Solver settings used to control the simulation]`


**方法**:

- `AddCollisionComponent(UMeshComponent CollisionComponent, int LODIndex)`  
  Add a collision component to the solver
- `AddGroomComponent(UGroomComponent GroomComponent)`  
  Add a groom component to the solver
- `RemoveCollisionComponent(UMeshComponent CollisionComponent)`  
  Remove a collision component to the solver
- `RemoveGroomComponent(UGroomComponent GroomComponent)`  
  Remove a groom component to the solver
- `ResetCollisionComponents()`  
  Reset the solver collision components
- `ResetGroomComponents()`  
  Reset the solver groom components
- `SetDeformerSolver(UMeshDeformer DeformerSolver)`  
  Change the MeshDeformer solver that is used for this Component.

---


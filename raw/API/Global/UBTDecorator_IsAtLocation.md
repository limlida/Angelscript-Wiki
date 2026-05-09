### UBTDecorator_IsAtLocation


Is At Location decorator node.
A decorator node that checks if AI controlled pawn is at given location.

**属性**:

- `float32 AcceptableRadius [distance threshold to accept as being at location]`
- `FAIDistanceType GeometricDistanceType []`
- `FAIDataProviderFloatValue ParametrizedAcceptableRadius []`
- `FValueOrBBKey_Bool bPathFindingBasedTest [If true the result will be consistent with tests done while following paths.
    Set to false to use geometric distance as configured with DistanceType]`
- `FValueOrBBKey_Bool bUseNavAgentGoalLocation [if moving to an actor and this actor is a nav agent, then we will move to their nav agent location]`

---


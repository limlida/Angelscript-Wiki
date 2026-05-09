### UBTDecorator_KeepInCone


Keep In Cone decorator node.
A decorator node that bases its condition on whether the observed position is still inside a cone. The cone's direction is calculated when the node first becomes relevant.

**属性**:

- `FValueOrBBKey_Float ConeHalfAngle [max allowed time for execution of underlying node]`
- `FBlackboardKeySelector ConeOrigin [blackboard key selector]`
- `FBlackboardKeySelector Observed [blackboard key selector]`

---


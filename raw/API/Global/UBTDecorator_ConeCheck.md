### UBTDecorator_ConeCheck


Cone check decorator node.
A decorator node that bases its condition on a cone check, using Blackboard entries to form the parameters of the check.

**属性**:

- `FBlackboardKeySelector ConeDirection ["None" means "use ConeOrigin's direction"]`
- `FValueOrBBKey_Float ConeHalfAngle [Angle between cone direction and code cone edge, or a half of the total cone angle]`
- `FBlackboardKeySelector ConeOrigin [blackboard key selector]`
- `FBlackboardKeySelector Observed [blackboard key selector]`

---


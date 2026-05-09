### AZoneGraphTestingActor


Debug actor to visually test zone graph.

**属性**:

- `UZoneGraphTestingComponent DebugComp []`


**方法**:

- `DisableCustomTests()`  
  Prevent custom tests to be notified when lane location is updated. Currently active tests will get notified with an invalid location.
- `EnableCustomTests()`  
  Allow custom tests to be notified when lane location is updated.

---


### FCompositeReroute


Collection of pins used for tunneling between graphs.
Utilizes reroute expressions to ensure zero overhead in the compiled material.

     _________________          _________________
    |   INPUT BASE    |        |   OUTPUT BASE   |
    +--------+--------+        +--------+--------+
    |        |   (>)  |   ->   |  (>)   |        |
    |        |   (>)  |        |  (>)   |        |
    |        |   (>)  |        |  (>)   |        |
    |        |   (>)  |        |  (>)   |        |
    |        |        |        |        |        |
    +--------+--------+        +--------+--------+
    | NODE IN:  NONE  |        | NODE IN:  PINS  |
    | NODE OUT: PINS  |        | NODE OUT: NONE  |
    |_________________|        |_________________|

**属性**:

- `FName Name []`


**方法**:

- `FCompositeReroute& opAssign(FCompositeReroute Other)`

---


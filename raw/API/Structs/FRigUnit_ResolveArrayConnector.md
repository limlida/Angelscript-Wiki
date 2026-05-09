### FRigUnit_ResolveArrayConnector


Returns the resolved item of the connector.

**属性**:

- `FRigElementKey Connector [* The key of the connector to resolve]`
- `TArray<FRigElementKey> Result [* The resulting item the connector is resolved to]`
- `bool SkipSocket [* If the connector is resolved to a socket the node
* will return the socket's direct parent (skipping it).]`
- `bool bIsConnected [* Returns true if the connector is resolved to a target.]`


**方法**:

- `FRigUnit_ResolveArrayConnector& opAssign(FRigUnit_ResolveArrayConnector Other)`

---


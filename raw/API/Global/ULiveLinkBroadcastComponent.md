### ULiveLinkBroadcastComponent


**属性**:

- `TArray<FName> AllowedBoneNames [Use this array to provide an inclusive list of bones to broadcast]`
- `TArray<FName> AllowedCurveNames [Curve data will be added to the broadcast data if listed here]`
- `TSubclassOf<ULiveLinkRole> Role [What role should be used for evaluating the data.
Choosing Transform Role will only send the transform of the chosen component, while picking Animation will send the full skeleton transforms.]`
- `FComponentReference SourceMesh [The source mesh to broadcast
todo: Use customization to restrict the allowed classes metadata]`
- `FName SubjectName [The name of the Live Link subject. Will default to the actor name if left blank]`
- `bool bEnable [Whether this component should broadcast data.]`

---


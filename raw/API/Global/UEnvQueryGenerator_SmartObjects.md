### UEnvQueryGenerator_SmartObjects


Fetches Smart Object slots within QueryBoxExtent from locations given by QueryOriginContext, that match SmartObjectRequestFilter

**属性**:

- `FVector QueryBoxExtent [Combined with generator's origin(s) (as indicated by QueryOriginContext) determines query's volume]`
- `TSubclassOf<UEnvQueryContext> QueryOriginContext [The context indicating the locations to be used as query origins]`
- `FSmartObjectRequestFilter SmartObjectRequestFilter [If set will be used to filter gathered results]`
- `bool bOnlyClaimable [Determines whether only currently claimable slots are allowed]`

---


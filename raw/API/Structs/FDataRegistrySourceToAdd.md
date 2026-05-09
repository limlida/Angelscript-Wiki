### FDataRegistrySourceToAdd


Defines which source assets to add and conditions for adding

**属性**:

- `int AssetPriority [Priority to use when adding to the registry.  Higher priorities are searched first]`
- `TSoftObjectPtr<UCurveTable> CurveTableToAdd [Link to the curve table to add to the registry]`
- `TSoftObjectPtr<UDataTable> DataTableToAdd [Link to the data table to add to the registry]`
- `FName RegistryToAddTo [Name of the registry to add to]`
- `bool bClientSource [Should this component be added for clients]`
- `bool bServerSource [Should this component be added on servers]`


**方法**:

- `FDataRegistrySourceToAdd& opAssign(FDataRegistrySourceToAdd Other)`

---


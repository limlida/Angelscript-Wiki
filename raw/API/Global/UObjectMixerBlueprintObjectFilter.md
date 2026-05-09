### UObjectMixerBlueprintObjectFilter


Script class for filtering object types to Object Mixer.
Blueprint classes should inherit directly from this class.

**方法**:

- `TSet<FName> GetColumnsToExclude() const`  
  Specify a list of property names corresponding to columns you don't want to ever show.
For example, you can specify "Intensity" and "LightColor" to ensure that they can't be enabled or shown in the UI.
Columns not specified can be enabled by the user in the UI.
- `TSet<FName> GetColumnsToShowByDefault() const`  
  Specify a list of property names corresponding to columns you want to show by default.
For example, you can specify "Intensity" and "LightColor" to show only those property columns by default in the UI.
Columns not specified will not be shown by default but can be enabled by the user in the UI.
- `TSet<FName> GetForceAddedColumns() const`  
  Specify a list of property names found in parent classes you want to show that aren't in the specified classes.
Note that properties specified here do not override the properties specified in GetColumnsToExclude().
For example, a ULightComponent displays "LightColor" in the editor's details panel,
but ULightComponent itself doesn't have a property named "LightColor". Instead it's in its parent class, ULightComponentBase.
In this scenario, ULightComponent is specified and PropertyInheritanceInclusionOptions is None, so "LightColor" won't appear by default.
Specify "LightColor" in this function to ensure that "LightColor" will appear as a column as long as
the property is accessible to one of the specified classes regardless of which parent class it comes from.
- `TSet<UClass> GetObjectClassesToFilter() const`  
  Return the basic object types you want to filter for in your level.
For example, if you want to work with Lights, return ULightComponentBase.
If you also want to see the properties for parent or child classes,
override the GetObjectMixerPropertyInheritanceInclusionOptions and GetForceAddedColumns functions.
- `TSet<TSubclassOf<AActor>> GetObjectClassesToPlace() const`  
  Return the basic actor types you want to be able to place using the Add button.
Note that only subclasses of AActor are supported and only those which have a registered factory.
This includes most engine actor types.
- `EObjectMixerInheritanceInclusionOptions GetObjectMixerPlacementClassInclusionOptions() const`  
  Specify whether we should return only the specified classes or the parent and child classes in placement mode.
Defaults to 'None' which only considers the specified classes.
- `EObjectMixerInheritanceInclusionOptions GetObjectMixerPropertyInheritanceInclusionOptions() const`  
  Specify whether we should return only the properties of the specified classes or the properties of parent and child classes.
Defaults to 'None' which only considers the properties of the specified classes.
If you're not seeing all the properties you expected, try overloading this function.
- `TSet<FName> GetPropertiesThatRequireListRefresh() const`  
  If a property is changed that has a name found in this set, the panel will be refreshed.
Add a property name to this list if you expect the list to change in some way after changing that property.
- `bool GetShowTransientObjects() const`  
  Determines if transient objects (such as Sequencer Spawnables) should be shown in the list. False by default.
- `bool ShouldIncludeUnsupportedProperties() const`  
  If true, properties that are not visible in the details panel and properties not supported by SSingleProperty will be selectable.
Defaults to false.

---


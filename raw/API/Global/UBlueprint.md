### UBlueprint


Blueprints are special assets that provide an intuitive, node-based interface that can be used to create new types of Actors
and script level events; giving designers and gameplay programmers the tools to quickly create and iterate gameplay from
within Unreal Editor without ever needing to write a line of code.

**属性**:

- `FString BlueprintCategory [The category of the Blueprint, used to organize this Blueprint class when displayed in palette windows]`
- `FString BlueprintDescription [Shows up in the content browser tooltip when the blueprint is hovered]`
- `FString BlueprintDisplayName [Overrides the BP's display name in the editor UI]`
- `FString BlueprintNamespace [The namespace of this blueprint (if set, the Blueprint will be treated differently for the context menu)]`
- `EBlueprintCompileMode CompileMode [The mode that will be used when compiling this class.]`
- `TArray<FString> HideCategories [Additional HideCategories. These are added to HideCategories from parent.]`
- `EShouldCookBlueprintPropertyGuids ShouldCookPropertyGuidsValue [Whether to include the property GUIDs for the generated class in a cooked build.
@note This option may slightly increase memory usage in a cooked build, but can avoid needing to add CoreRedirect data for Blueprint classes stored within SaveGame archives.]`
- `UThumbnailInfo ThumbnailInfo [Information for thumbnail rendering]`
- `bool bDeprecate [Deprecates the Blueprint, marking the generated class with the CLASS_Deprecated flag]`
- `bool bGenerateAbstractClass [Whether or not this blueprint's class is a abstract class or not.  Should set CLASS_Abstract in the KismetCompiler.]`
- `bool bGenerateConstClass [Whether or not this blueprint's class is a const class or not.  Should set CLASS_Const in the KismetCompiler.]`
- `bool bRunConstructionScriptInSequencer [whether or not you want to continuously rerun the construction script for an actor in sequencer]`
- `bool bRunConstructionScriptOnDrag [whether or not you want to continuously rerun the construction script for an actor as you drag it in the editor, or only when the drag operation is complete]`


**方法**:

- `UClass GeneratedClass()`  
  Gets the class generated when this blueprint is compiled

@param BlueprintObj          The blueprint object
@return UClass*                      The generated class
- `SetBlueprintVariableExposeOnSpawn(FName VariableName, bool bExposeOnSpawn)`  
  Sets "Expose On Spawn" to true/false on a Blueprint variable

@param Blueprint                     The blueprint object
@param VariableName          The variable name
@param bExposeOnSpawn        Set to true to expose on spawn
- `SetBlueprintVariableExposeToCinematics(FName VariableName, bool bExposeToCinematics)`  
  Sets "Expose To Cinematics" to true/false on a Blueprint variable

@param Blueprint                             The blueprint object
@param VariableName                  The variable name
@param bExposeToCinematics   Set to true to expose to cinematics
- `SetBlueprintVariableInstanceEditable(FName VariableName, bool bInstanceEditable)`  
  Sets "Instance Editable" to true/false on a Blueprint variable

@param Blueprint                             The blueprint object
@param VariableName                  The variable name
@param bInstanceEditable             Toggle InstanceEditable

---


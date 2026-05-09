### UAngelscriptSettings


**属性**:

- `TArray<FString> BlueprintLibraryNamespacePrefixesToStrip [Strip these prefixes from namespaced binds. For example, when stripping "Kismet": `UKismetSystemLibrary::IsStandalone()` becomes `SystemLibrary::IsStandalone()`]`
- `TArray<FString> BlueprintLibraryNamespaceSuffixesToStrip [Strip these suffixes from namespaced binds. For example, when stripping "Library": `SystemLibrary::IsStandalone()` becomes `System::IsStandalone()`]`
- `int ConnectionPort [The port we use for communication between Unreal Engine and the Visual Studio Code plugin for auto-completion and attaching the debugger.
Default is 27099.
Can be overridden by launch argument -asdebugport]`
- `EAngelscriptPropertyBlueprintSpecifier DefaultPropertyBlueprintSpecifier [Default Blueprint access specifier for script UPROPERTY()s without explicit Blueprint specifier.]`
- `EAngelscriptPropertyEditSpecifier DefaultPropertyEditSpecifier [Default Edit access specifier for script UPROPERTY()s without explicit Edit specifier on classes.]`
- `EAngelscriptPropertyEditSpecifier DefaultPropertyEditSpecifierForStructs [Default Edit access specifier for script UPROPERTY()s without explicit Edit specifier on structs.]`
- `EAngelscriptDeprecationMode DeprecateOldActorGenericMethods [Whether to deprecate the old generic methods on actors and components that have been superseded by functions with DeterminesOutputType.

These are AActor::Spawn(), and various GetComponentsByClass() style functions that take an input array instead of returning one.]`
- `float32 EditorMaximumScriptExecutionTime [Only in editor:
If a script function takes longer than this time to execute, kill it with an exception.
This allows the editor to recover from accidental infinite loops, but does not work in cooked games!]`
- `EAngelscriptMathNamespace MathNamespace [Namespace to use for math library functions in angelscript]`
- `TArray<FString> PreprocessorFlags [Additional preprocessor flags which will be defined when preprocessing angelscript files.
Add them e.g. to BaseEngine.ini:
  [/Script/AngelscriptCode.AngelscriptSettings]
  +PreprocessorFlags="FOO"
  +PreprocessorFlags="BAR"]`
- `EAngelscriptDeprecationMode StaticClassDeprecation [Whether to deprecate or disallow the usage of AAnyClass::StaticClass().
The newer alternative does not require the StaticClass call, the class name can be used directly.]`
- `FString VSCodeWorkspacePath [Sets the path to the VS Code code-workspace file. Setting this will open the workspace.
This path must be relative to the project directory.
Setting this will disable the `bOpenFolderOnVSCodeSourceLinks` setting.]`
- `FString WorkspaceToolName []`
- `bool bAllowImplicitPropertyAccessors [Whether to allow any C++ function that starts with Get...() to be accessed as a property. (Requires editor restart)]`
- `bool bAllowRawConstructorsForComponentsAndActors [Whether to allow actor and component classes to be instantiated using their raw constructor, instead of forcing SpawnActor or UComponent::Create() calls.]`
- `bool bAlwaysPreprocessEditorScriptInEditor [If true, always preprocess editor-only script when running the Editor
This precludes the use of -as-force-preprocess-editor-code commandline switch
If this option is enabled in config, you can opt out of it by using the -as-force-disable-editor-code command line switch]`
- `bool bDefaultComponentsEditable [Whether to mark DefaultComponents as EditDefaultsOnly by default. Otherwise, they will be VisibleAnywhere by default]`
- `bool bDefaultFunctionBlueprintCallable [Whether UFUNCTION()s should be BlueprintCallable by default without explicit BlueprintCallable specifier.]`
- `bool bDeprecateDoubleType [Deprecate usage of the 'double' type in script, in favor of 'float64' or just 'float' when bScriptFloatIsFloat64.]`
- `bool bErrorOnIncorrectEditorOnlyCode [Show an error when a function or property that is editor-only is used outside of an EDITOR block or editor-only script module.

Note: Can cause false positives if a function or property is declared separately in editor-only and not-editor-only blocks.
In that case, put the preprocessor directives inside the function body, instead of around the whole function.]`
- `bool bErrorWhenUsingInvalidWorldContext [Throw an exception when calling a function that requires a World Context to be set, but the current object is not in a world.
Note: this error is only checked in editor for performance reasons.]`
- `bool bExposeGlobalFunctionsToOtherScriptFiles [Whether to allow global functions from different script files to be used when not in a namespace. When set to false, only global function in namespaces can be used outside the file they're in.]`
- `bool bForceConstWithinDevelopmentOnlyFunctions [Whether any code that is placed within check() asserts, Print() statements and other development-only functions should only be allowed to call const methods.
This is intended to help catch issues with side-effects being placed inside expressions that get compiled out in shipping builds.]`
- `bool bMarkNonUpropertyPropertiesAsTransient [Some properties are implicitly treated as UPROPERTY:s to be seen correctly by the GC, if true this ensures such properties are marked as transient to avoid unintentional serialization]`
- `bool bOpenFolderOnVSCodeSourceLinks [When opening a file in vscode by clicking a source link (for example, by clicking a Class link),
always open in a vscode workspace with the Script folder as the opened workspace.

You should turn this off if you're using a specific vscode workspace definition, rather than just opening the folder.]`
- `bool bScriptFloatIsFloat64 [In order to avoid confusion with blueprints, make the 'float' type in script resolve to 'float64'.]`
- `bool bUseScriptNameForBlueprintLibraryNamespaces [Whether we should use the ScriptName meta tag for namespaced binds if available.]`
- `bool bWarnIntegerDivision [Emit a warning for precision loss when integer division is used.]`
- `bool bWarnOnDivergentComparisonOperatorOverloads [Show a warning when a comparison operator overload is implemented targeting a different type than the containing type.]`
- `bool bWarnOnFloatConstantsForDoubleValues [Emit a warning when using a float constant (eg `0.f`) to initialize a double value.]`
- `bool bWarnOnImplicitSignedUnsignedConversion [Show a warning when an implicit conversion between signed/unsigned integers can cause incorrect results.]`
- `bool bWarnOnIncrementDecrementInComplexExpression [Show a warning when an increment or decrement (++ / --) expression is used within a complex expression.
Side effects are not usually expected for longer expressions and can be hard to read.]`
- `bool bWarnOnUnusedReturnValueForConstMethods [Show a warning when the result of a const method is not used.]`

---


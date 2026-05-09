### UPythonScriptPluginUserSettings


**属性**:

- `EPythonEnabledOverrideState EnablePythonOverride [Should we override the default enabled state for Python for this project?]`
- `ETypeHintingMode TypeHintingMode [Should the generated Python stub and API documentation have type hints. This enables standard Python type hinting (PEP 484) for the classes,
structs, methods, properties, constants, etc. exposed by the engine. If the developer mode is enabled and the Python IDE configured to use
the generated Python stub, types will be displayed in auto-completion popup and used by the IDE static type checkers. This has no effects on
the execution of the code. (Requires Python >= 3.7)]`
- `bool bDeveloperMode [Should Developer Mode be enabled on the Python interpreter?

(will also enable extra warnings (e.g., for deprecated code), and enable stub code generation for
use with external IDEs).]`
- `bool bEnableContentBrowserIntegration [Should Python scripts be available in the Content Browser?]`

---


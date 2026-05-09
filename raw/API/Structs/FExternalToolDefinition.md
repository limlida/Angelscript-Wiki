### FExternalToolDefinition


Structure for defining an external tool

**属性**:

- `FString CommandLineOptions [The command line options to pass to the executable.]`
- `FFilePath ExecutablePath [The executable to run.]`
- `FDirectoryPath ScriptDirectory [If the ScriptExtension is set, look here for the script files.]`
- `FString ScriptExtension [If set, look for scripts with this extension.]`
- `FString ToolName [The name of the tool / test.]`
- `FDirectoryPath WorkingDirectory [The working directory for the new process.]`


**方法**:

- `FExternalToolDefinition& opAssign(FExternalToolDefinition Other)`

---


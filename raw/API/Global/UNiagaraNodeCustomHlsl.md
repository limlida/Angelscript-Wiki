### UNiagaraNodeCustomHlsl


**属性**:

- `TArray<FFilePath> AbsoluteIncludeFilePaths [Links to hlsl files that will be included by the translator. These external files are not watched by the engine, so changes to them do not automatically trigger a recompile of Niagara scripts.]`
- `FString CustomHlsl []`
- `TArray<FString> VirtualIncludeFilePaths [Links to hlsl files that will be included by the translator. These paths are resolved with the virtual shader paths registered in the engine.
For example, /Plugin/FX/Niagara maps to /Engine/Plugins/FX/Niagara/Shaders. Custom mappings can be added via AddShaderSourceDirectoryMapping().]`

---


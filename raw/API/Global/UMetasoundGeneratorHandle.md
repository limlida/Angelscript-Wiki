### UMetasoundGeneratorHandle


Blueprint-facing interface to a FMetasoundGenerator on a UAudioComponent.

**方法**:

- `bool ApplyParameterPack(UMetasoundParameterPack Pack)`  
  Makes a copy of the supplied parameter pack and passes it to the MetaSoundGenerator
for asynchronous processing. IT ALSO caches this copy so that if the AudioComponent
is virtualized the parameter pack will be sent again when/if the AudioComponent is
"unvirtualized".
- `EnableRuntimeRenderTiming(bool Enable) const`  
  Enable the profiling of the MetaSound render for this playing instance. You
must call this before calling "GetRuntimeCPUCoreUtilization" (below) or you will just
get 0.0 back for core utilization.
- `float GetCPUCoreUtilization() const`  
  Get the CPU usage as "fraction of real time" used to render this metasound.
NOTE: The MetasoundSource asset MUST have had its EnableRenderTiming function called
before the metasound is started!
- `UpdateWatchers() const`
- `bool WatchOutput(FName OutputName, FOnMetasoundOutputValueChanged OnOutputValueChanged = FOnMetasoundOutputValueChanged ( ), FName AnalyzerName = NAME_None, FName AnalyzerOutputName = NAME_None)`  
  Watch an output value.

@param OutputName - The user-specified name of the output in the Metasound
@param OnOutputValueChanged - The event to fire when the output's value changes
@param AnalyzerName - (optional) The name of the analyzer to use on the output, defaults to a passthrough
@param AnalyzerOutputName - (optional) The name of the output on the analyzer to watch, defaults to the passthrough output
@returns true if the watch setup succeeded, false otherwise

---


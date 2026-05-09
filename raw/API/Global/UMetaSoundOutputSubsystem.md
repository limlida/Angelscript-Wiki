### UMetaSoundOutputSubsystem


Provides access to a playing Metasound generator's outputs

**方法**:

- `bool UnwatchOutput(UAudioComponent AudioComponent, FName OutputName, FOnMetasoundOutputValueChanged OnOutputValueChanged = FOnMetasoundOutputValueChanged ( ), FName AnalyzerName = NAME_None, FName AnalyzerOutputName = NAME_None)`
- `bool WatchOutput(UAudioComponent AudioComponent, FName OutputName, FOnMetasoundOutputValueChanged OnOutputValueChanged = FOnMetasoundOutputValueChanged ( ), FName AnalyzerName = NAME_None, FName AnalyzerOutputName = NAME_None)`  
  Watch an output on a Metasound playing on a given audio component.

@param AudioComponent - The audio component
@param OutputName - The user-specified name of the output in the Metasound
@param OnOutputValueChanged - The event to fire when the output's value changes
@param AnalyzerName - (optional) The name of the analyzer to use on the output, defaults to a passthrough
@param AnalyzerOutputName - (optional) The name of the output on the analyzer to watch, defaults to the passthrough output
@returns true if the watch setup succeeded, false otherwise

---


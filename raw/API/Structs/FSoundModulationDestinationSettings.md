### FSoundModulationDestinationSettings


Parameter destination settings allowing modulation control override for parameter destinations opting in to the Modulation System.

**属性**:

- `TSet<TObjectPtr<USoundModulatorBase>> Modulators [Set of modulation sources, which provides values to mix with base value.]`
- `float32 Value [Base value of parameter]`
- `bool bEnableModulation [Whether or not to enable modulation]`


**方法**:

- `FSoundModulationDestinationSettings& opAssign(FSoundModulationDestinationSettings Other)`

---


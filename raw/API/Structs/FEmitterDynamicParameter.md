### FEmitterDynamicParameter


Helper structure for displaying the parameter.

**属性**:

- `FRawDistributionFloat ParamValue [The distriubtion for the parameter value.]`
- `EEmitterDynamicParameterValue ValueMethod [Where to get the parameter value from.]`
- `bool bScaleVelocityByParamValue [If true, scale the velocity value selected in ValueMethod by the evaluated ParamValue.]`
- `bool bSpawnTimeOnly [If true, only set the value at spawn time of the particle, otherwise update each frame.]`
- `bool bUseEmitterTime [If true, use the EmitterTime to retrieve the value, otherwise use Particle RelativeTime.]`


**方法**:

- `FEmitterDynamicParameter& opAssign(FEmitterDynamicParameter Other)`

---


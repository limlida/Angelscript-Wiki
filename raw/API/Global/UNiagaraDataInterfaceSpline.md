### UNiagaraDataInterfaceSpline


Data Interface allowing sampling of in-world spline components. Note that this data interface is very experimental.

**属性**:

- `int NumLUTSteps []`
- `TSoftObjectPtr<AActor> SoftSourceActor [The source actor from which to sample.  Note that this can only be set when used as a user variable on a component in the world.]`
- `FNiagaraUserParameterBinding SplineUserParameter [Reference to a user parameter if we're reading one. This should  be an Object user parameter that is either a USplineComponent or an AActor containing a USplineComponent.]`
- `bool bUseLUT []`

---


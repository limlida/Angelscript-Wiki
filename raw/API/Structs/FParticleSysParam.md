### FParticleSysParam


Struct used for a particular named instance parameter for this ParticleSystemComponent.

**属性**:

- `AActor Actor`
- `FColor Color`
- `UMaterialInterface Material`
- `FName Name [The name of the parameter]`
- `EParticleSysParamType ParamType [The type of parameters
PSPT_None       - There is no data type
PSPT_Scalar     - Use the scalar value
PSPT_ScalarRand - Select a scalar value in the range [Scalar_Low..Scalar)
PSPT_Vector     - Use the vector value
PSPT_VectorRand - Select a vector value in the range [Vector_Low..Vector)
PSPT_Color      - Use the color value
PSPT_Actor      - Use the actor value
PSPT_Material   - Use the material value
PSPT_VectorUnitRand - Select a random unit vector and scale along the range [Vector_Low..Vector)]`
- `float32 Scalar`
- `float32 Scalar_Low`
- `FVector Vector`
- `FVector Vector_Low`


**方法**:

- `FParticleSysParam& opAssign(FParticleSysParam Other)`

---


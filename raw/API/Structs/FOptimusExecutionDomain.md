### FOptimusExecutionDomain


A struct to hold onto a single-level domain for controlling a kernel's execution domain.
The reason it's in a struct is so that we can apply a property panel customization for it
to make it easier to select from a pre-defined list of execution domains.

**属性**:

- `FString Expression []`
- `FName Name [The name of the execution domain that this kernel operates on.]`
- `EOptimusExecutionDomainType Type []`


**方法**:

- `FOptimusExecutionDomain& opAssign(FOptimusExecutionDomain Other)`

---


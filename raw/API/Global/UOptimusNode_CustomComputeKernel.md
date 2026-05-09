### UOptimusNode_CustomComputeKernel


**属性**:

- `TArray<TObjectPtr<UComputeSource>> AdditionalSources [Additional source includes.]`
- `FName Category [FIXME: Use drop-down with a preset list + allow custom entry.]`
- `FOptimusExecutionDomain ExecutionDomain [The execution domain that this kernel operates on. The size of the domain is governed by
the component binding that flows into the primary input group of this kernel.]`
- `FIntVector GroupSize [Number of threads in a thread group.
Thread groups have 3 dimensions.
It's better to have the total threads (X*Y*Z) be a value divisible by 32.]`
- `FOptimusParameterBindingArray InputBindingArray [Input bindings. Each one is a function that should be connected to an implementation in a data interface.]`
- `FOptimusValidatedName KernelName [Name of kernel. This is also used as the entry point function name in generated code.]`
- `FOptimusParameterBindingArray OutputBindingArray [Output bindings. Each one is a function that should be connected to an implementation in a data interface.]`
- `TArray<FOptimusSecondaryInputBindingsGroup> SecondaryInputBindingGroups [Secondary bindings.]`
- `FOptimusShaderText ShaderSource [The kernel source code.
If the code contains more than just the kernel entry function, then place the kernel entry function inside a KERNEL {} block.]`

---


### UComputeKernel


Base class representing a kernel that will be run as a shader on the GPU.

**属性**:

- `int KernelFlags [Specifying certain memory access flags allows for optimizations such as kernel fusing.]`
- `UComputeKernelSource KernelSource [The compute kernel source asset.
A kernel's source may be authored by different mechanisms; e.g. HLSL text, VPL graph, ML Meta Lang, etc]`

---


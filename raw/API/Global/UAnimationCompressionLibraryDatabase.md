### UAnimationCompressionLibraryDatabase


An ACL database object references several UAnimSequence instances that it contains.

**属性**:

- `ACLVisualFidelity DefaultVisualFidelity [The default level of quality to set when the database loads in-game. By default, nothing is streamed in.]`
- `float32 LowestImportanceProportion [What percentage of the key frames should be moved to the database. Least important key frames are moved first.]`
- `uint MaxStreamRequestSizeKB [The maximum size in KiloBytes of streaming requests. Setting this to 0 will force tiers to load in a single request regardless of their size.]`
- `float32 MediumImportanceProportion [What percentage of the key frames should be moved to the database. Medium importance key frames are moved second.]`
- `ACLVisualFidelity PreviewVisualFidelity [The level of quality to preview with the database when decompressing in the editor.]`
- `FPerPlatformBool StripLowestImportanceTier [Whether or not to strip the lowest importance tier entirely from disk. Stripping the lowest tier means that the visual fidelity of Highest and Medium are equivalent.]`

---


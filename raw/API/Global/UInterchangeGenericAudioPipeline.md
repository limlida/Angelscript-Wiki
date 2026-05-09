### UInterchangeGenericAudioPipeline


Basic pipeline for importing sound wave assets.

**属性**:

- `FString PipelineDisplayName [The name of the pipeline that will be display in the import dialog.]`
- `bool bImportSounds [If enabled, imports all sounds found in the source.]`


**方法**:

- `UInterchangeAudioSoundWaveFactoryNode CreateSoundWaveFactoryNode(const UInterchangeAudioSoundWaveNode SoundWaveNode)`  
  Creates a SoundWaveFactoryNode for a given SoundWaveNode, if one doesn't already exist.
Initializes the factory node, sets the custom directory path, and sets the target nodes
on both the factory and sound wave nodes.

---


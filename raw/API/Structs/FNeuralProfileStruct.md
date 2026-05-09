### FNeuralProfileStruct


struct with all the settings we want in UNeuralProfile, separate to make it easer to pass this data around in the engine.

**属性**:

- `int BatchSizeOverride [Used to override the batch size if the batch dimension is dynamic (-1)]`
- `FIntVector4 InputDimension [Input dimension of the NNEModelData model]`
- `ENeuralProfileFormat InputFormat [Define the expected input format, if any output from material is not this format, a custom conversion
will be applied for this conversion.]`
- `UObject NNEModelData [Stores the NNEModelData imported from e.g., onnx model]`
- `FIntVector4 OutputDimension [Output dimension of the NNEModelData model]`
- `ENeuralProfileFormat OutputFormat [Define the expected output format. A conversion between the output format and the actual format will
be applied automatically.]`
- `ENeuralProfileRuntimeType RuntimeType [runtime type (support "NNERuntimeORTDml" only at this moment)]`
- `FIntPoint TileOverlap [Tile border overlaps (Left|Right, Top|Bottom). The larger this value, the more tiles are required to cover the whole screen when TileSize is Auto.]`
- `ETileOverlapResolveType TileOverlapResolveType []`
- `ENeuralModelTileType TileSize [Total tiles used. Each tile will be executed by 1 batch]`


**方法**:

- `FNeuralProfileStruct& opAssign(FNeuralProfileStruct Other)`

---


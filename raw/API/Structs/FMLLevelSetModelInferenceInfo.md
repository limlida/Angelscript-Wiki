### FMLLevelSetModelInferenceInfo


**属性**:

- `FString MLModelWeights [Model weights {W1,..,Wn} is tokanized into FString as "W1_0,W1_1,...,W1_k1|W2_0,W2_1,...,W2_k2|...|Wn_0,Wn_1,...,Wn_kn"]`
- `TArray<int> ModelArchitectureActivationNodeSizes [In most cases input layer is 3 (location input, X,Y,Z coordinates of the query), and output layer is 1 (Scaled Signed Distance or Incorrect Zone Indicator)]`
- `FString NNEModelPath [The path to the NNE model. At the moment MLLevelSet Asset accepts only mlir.tosa models.]`


**方法**:

- `FMLLevelSetModelInferenceInfo& opAssign(FMLLevelSetModelInferenceInfo Other)`

---


### UAnimToTextureDataAsset


**属性**:

- `TArray<FAnimToTextureAnimSequenceInfo> AnimSequences`
- `int AnimationIndex [AnimationIndex Index of the animation to play.
This will internally set Start and End Frame when using AutoPlay.
This will be used by UpdateMaterialInstanceFromDataAsset and AssetActions for setting MaterialInstance static switches]`
- `TArray<FAnimToTextureAnimInfo> Animations []`
- `FName AttachToSocket [Bone used for Rigid Binding. The bone needs to be part of the RawBones.
Sockets and VirtualBones are not supported.]`
- `FVector3f BoneMinBBox []`
- `TSoftObjectPtr<UTexture2D> BonePositionTexture [Texture for storing bone positions
This is only used on Bone Mode]`
- `TSoftObjectPtr<UTexture2D> BoneRotationTexture [Texture for storing bone rotations
This is only used on Bone Mode]`
- `int BoneRowsPerFrame []`
- `FVector3f BoneSizeBBox []`
- `int BoneWeightRowsPerFrame []`
- `TSoftObjectPtr<UTexture2D> BoneWeightTexture [Texture for storing vertex/bone weighting
This is only used on Bone Mode]`
- `int Frame [Frame to play
When not using AutoPlay, user is responsible of setting the frame.
This will be used by UpdateMaterialInstanceFromDataAsset and AssetActions for setting MaterialInstance static switches]`
- `int MaxHeight [Max resolution of the texture.
A smaller size will be used if the data fits.]`
- `int MaxWidth [Max resolution of the texture.
A smaller size will be used if the data fits.]`
- `EAnimToTextureMode Mode [Storage Mode.
Vertex: will store per-vertex position and normal.
Bone: Will store per-bone position and rotation and per-vertex bone weight.
               This is the preferred method if meshes share skeleton.]`
- `EAnimToTextureNumBoneInfluences NumBoneInfluences [Number of Bone Influences for deformation. More influences will produce smoother results at the cost of performance.
This will be used by UpdateMaterialInstanceFromDataAsset and AssetActions for setting MaterialInstance static switches]`
- `int NumBones [Total Number of Bones]`
- `int NumDriverTriangles [Number of Driver Triangles
Each StaticMesh Vertex will be influenced by N SkeletalMesh (Driver) Triangles.
Increasing the Number of Driver Triangles will increase the Mapping computation.
Using a single Driver Triangle will do a Rigid Binding to Closest Triangle.]`
- `int NumFrames [Total Number of Frames in all animations]`
- `EAnimToTexturePrecision Precision [Texture Precision]`
- `FTransform RootTransform [Adds transformation to baked textures.
This can be used for adding an offset to the animation.]`
- `float32 SampleRate`
- `float32 Sigma [Inverse Distance Weighting
This exponent value will be used for computing weights for the DriverTriangles.
Larger number will create a more contrasted weighting, but it might]`
- `int SkeletalLODIndex [SkeletalMesh LOD to bake.]`
- `TSoftObjectPtr<USkeletalMesh> SkeletalMesh [SkeletalMesh to bake animations from.]`
- `int StaticLODIndex [StaticMesh LOD to bake to.]`
- `TSoftObjectPtr<UStaticMesh> StaticMesh [StaticMesh to bake to.]`
- `int UVChannel [StaticMesh UVChannel Index for storing vertex information.
Make sure this index does not conflict with the Lightmap UV Index.]`
- `FVector3f VertexMinBBox []`
- `TSoftObjectPtr<UTexture2D> VertexNormalTexture [Texture for storing vertex normals
This is only used on Vertex Mode]`
- `TSoftObjectPtr<UTexture2D> VertexPositionTexture [Texture for storing vertex positions
This is only used on Vertex Mode]`
- `int VertexRowsPerFrame []`
- `FVector3f VertexSizeBBox []`
- `bool bAutoPlay [AutoPlay will use Engine Time for driving the animation.
This will be used by UpdateMaterialInstanceFromDataAsset and AssetActions for setting MaterialInstance static switches]`
- `bool bEnforcePowerOfTwo [Enforce Power Of Two on texture resolutions.]`


**方法**:

- `UTexture2D GetBonePositionTexture()`
- `UTexture2D GetBoneRotationTexture()`
- `UTexture2D GetBoneWeightTexture()`
- `USkeletalMesh GetSkeletalMesh()`
- `UStaticMesh GetStaticMesh()`
- `int GetIndexFromAnimSequence(const UAnimSequence Sequence)`  
  Finds AnimSequence Index in the Animations Array.
      *  Only Enabled elements are returned.
      *  Returns -1 if not found.

---


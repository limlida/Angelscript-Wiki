### UUVTransferToolProperties


**属性**:

- `FString DestUVChannel [UV Channel to use as destination, if Same Destination Channel is false.]`
- `float PathSimilarityWeight [Setting this above 0 will include a measure of path similarity to seam transfer, so that among
 similarly short paths, we pick one that lies closer to the edge. Useful in cases where the path
 is on the wrong diagonal to the triangulation, because it prefers a closely zigzagging path over
 a wider "up and over" path that has similar length. If set to 0, only path length is used.]`
- `FString SourceUVChannel []`
- `float VertexSearchDistance [How far to look for a corresponding vertex on the destination. The destination is expected to
 be a simplified version of source using existing vertices, so this should not need to be set high.]`
- `bool bClearExistingSeams [If true, clears existing seams on the destination mesh before carrying over new ones.]`
- `bool bReverseDirection [If false, the first selected mesh's UV's are applied to the second selected mesh. If true, the
 reverse direction is used.]`
- `bool bSameDestinationChannel [When true, the source channel is the same index in the source and destination, and options
 are limited to channels that exist on both meshes.]`
- `bool bShowSeams []`
- `bool bShowWireframes []`
- `bool bTransferSeamsOnly [If true, we only transfer the seams without trying to transfer actual UV element values.]`

---


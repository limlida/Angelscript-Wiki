### UMeshPaintVirtualTexture


Mesh paint virtual texture asset.
This is a virtual texture that which will be owned by a mesh component to store the mesh painting on that component.
All mesh paint virtual textures will be stored using a shared virtual texture page table and physical space.
This shared space means that all mesh paint virtual textures can be accessed in a "bindless" way using a small descriptor.
---


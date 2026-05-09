### FNDCAccessContextBase


Base class for context used when retrieving a specific set of Data Channel Data to read or write.
Many Data Channel types will have multiple internal sets of data and these parameters control which the Channel should return to users for access.
An example of this would be the Islands Data Channel type which will subdivide the world and have a different set of data for each sub division.
It will return to users the correct data for their location based on these parameters.
NDC Types must specify which of these access context types they require.
The base struct contains only data needed for internal systems to function.
Beyond this you are free to add anything else you need.
Some data can be intended as input to the search/internal routing or data creation. This should be marked with "NDCAccessContextInput".
Other data can be intended as output to store derived or transient state and pass back to the user. This should be marked with "NDCAccessContextOutput".

**属性**:

- `USceneComponent OwningComponent []`


**方法**:

- `FNDCAccessContextBase& opAssign(FNDCAccessContextBase Other)`

---


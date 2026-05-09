### FConcertDataStore_FetchOrAddRequest


The request passed from the client to the server to fetch or add a key/value pair
from/in the data store. The end user should not use this structure directly, but use the
IConcertClientDataStore::FetchOrAdd() API instead. The response type for this request is
FConcertDataStore_Response.
@see IConcertClientDataStore::FetchOrAdd() methods.

**方法**:

- `FConcertDataStore_FetchOrAddRequest& opAssign(FConcertDataStore_FetchOrAddRequest Other)`

---


### FOnlineAccountStoredCredentials


Stores online account login credentials (for editor config data).
@note ONLY use this in trusted environments (like a local config file) and NOT for anything that requires actual security/strong encryption.
@see FOnlineAccountCredentials.

**属性**:

- `FString Id [Id of the user logging in (email, display name, facebook id, etc)]`
- `FString Token [Credentials of the user logging in (password or auth token)]`
- `FString Type [Type of account. Needed to identity the auth method to use (epic, internal, facebook, etc)]`


**方法**:

- `FOnlineAccountStoredCredentials& opAssign(FOnlineAccountStoredCredentials Other)`

---


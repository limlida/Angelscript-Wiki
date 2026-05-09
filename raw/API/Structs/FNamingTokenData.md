### FNamingTokenData


**属性**:

- `FText Description [A description of the token.]`
- `FText DisplayName [The friendly display name of the token.]`
- `FName FunctionName [The function to use to evaluate the token. Only needed for blueprint implementations.]`
- `FString TokenKey [The key of the token to use.
This is what the text must match in order to be evaluated. Brackets are automatically added and do not need to be included.

@note Must contain alphanumeric and '_' characters only and cannot be empty.]`


**方法**:

- `FNamingTokenData& opAssign(FNamingTokenData Other)`

---


### FInAppPurchaseProductInfo2


Micro-transaction purchase information

**属性**:

- `FString CurrencyCode [The localized currency code of the price]`
- `FString CurrencySymbol [The localized currency symbol of the price]`
- `FString DecimalSeparator [The localized decimal separator used in the price]`
- `FString DisplayDescription [The localized display description name]`
- `FString DisplayName [The localized display name]`
- `FString DisplayPrice [The localized display price name]`
- `TMap<FString,FString> DynamicFields [Dynamic fields from raw Json data.]`
- `FString GroupingSeparator [The localized grouping separator of the price]`
- `FString Identifier [The unique product identifier]`
- `float32 RawPrice [Raw price without currency code and symbol]`
- `FString ReceiptData [Opaque receipt data for the transaction]`
- `FString TransactionIdentifier [the unique transaction identifier]`


**方法**:

- `FInAppPurchaseProductInfo2& opAssign(FInAppPurchaseProductInfo2 Other)`

---


### FOnlineProxyStoreOffer


Offer entry for display from online store

**属性**:

- `FString CurrencyCode [Price currency code]`
- `FText Description [Short description for display]`
- `EOnlineProxyStoreOfferDiscountType DiscountType [Type of discount currently running on this offer (if any)]`
- `TMap<FString,FString> DynamicFields []`
- `FDateTime ExpirationDate [Date this information is no longer valid (maybe due to sale ending, etc)]`
- `FText LongDescription [Full description for display]`
- `int NumericPrice [Final-Price (Post-Sales/Discounts) in numeric form for comparison/sorting]`
- `FString OfferId [Unique offer identifier]`
- `FText PriceText [Final-Pricing (Post-Sales/Discounts) as text for display]`
- `int RegularPrice [Regular non-sale price in numeric form for comparison/sorting]`
- `FText RegularPriceText [Regular non-sale price as text for display]`
- `FDateTime ReleaseDate [Date the offer was released]`
- `FText Title [Title for display]`


**方法**:

- `FOnlineProxyStoreOffer& opAssign(FOnlineProxyStoreOffer Other)`

---


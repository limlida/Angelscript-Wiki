### UDetailsView


The details view allows you to display the value of an object properties.

**属性**:

- `TArray<FName> CategoriesToShow [Which categories to show in the details panel. If both this and the Properties To Show lists are empty, all properties will show.]`
- `float32 ColumnWidth [The default column width]`
- `TArray<FName> PropertiesToShow [Which properties to show in the details panel. If both this and the Categories To Show lists are empty, all properties will show.]`
- `FName ViewIdentifier [Identifier for this details view; NAME_None if this view is anonymous]`
- `bool bAllowFavoriteSystem [If false, the current properties editor will never display the favorite system]`
- `bool bAllowFiltering [True if we allow filtering through search and the filter dropdown menu.]`
- `bool bForceHiddenPropertyVisibility [If true, all properties will be visible, not just those with CPF_Edit]`
- `bool bShowAnimatedPropertiesOption [True if you want to show the 'Show Only Animated Properties'. Only valid in conjunction with bAllowFiltering]`
- `bool bShowKeyablePropertiesOption [True if you want to show the 'Show Only Keyable Properties'. Only valid in conjunction with bAllowFiltering]`
- `bool bShowModifiedPropertiesOption [True if you want to show the 'Show Only Modified Properties'. Only valid in conjunction with bAllowFiltering]`
- `bool bShowScrollBar [If false, the details panel's scrollbar will always be hidden. Useful when embedding details panels in widgets that either grow to accommodate them, or with scrollbars of their own.]`

---


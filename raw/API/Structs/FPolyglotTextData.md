### FPolyglotTextData


Polyglot data that may be registered to the text localization manager at runtime.
@note This struct is mirrored in Engine/Source/Runtime/Core/Public/Internationalization/Internationalization.h

**属性**:

- `ELocalizedTextSourceCategory Category [The category of this polyglot data.
@note This affects when and how the data is loaded into the text localization manager.]`
- `FString Key [The key of the text created from this polyglot data.
@note This must not be empty.]`
- `TMap<FString,FString> LocalizedStrings [Mapping between a culture code and its localized string.
@note The native culture may also have a translation in this map.]`
- `FString Namespace [The namespace of the text created from this polyglot data.
@note This may be empty.]`
- `FString NativeCulture [The native culture of this polyglot data.
@note This may be empty, and if empty, will be inferred from the native culture of the text category.]`
- `FString NativeString [The native string for this polyglot data.
@note This must not be empty (it should be the same as the originally authored text you are trying to replace).]`
- `bool bIsMinimalPatch [True if this polyglot data is a minimal patch, and that missing translations should be
ignored (falling back to any LocRes data) rather than falling back to the native string.]`


**方法**:

- `FPolyglotTextData& opAssign(FPolyglotTextData Other)`

---


### FARPDomainDefinitionByContentRoot


**属性**:

- `TArray<FString> CanReferenceTheseDomains [The list of additional domains always visible from this domain
(EngineContent is always visible)]`
- `TArray<FDirectoryPath> ContentRoots [The list of content root paths considered to be part of this domain]`
- `FText DomainDisplayName [The display name of this domain (used in error message when attempting to reference content incorrectly)]`
- `FString DomainName [The name of this domain]`
- `FText ErrorMessageIfUsedElsewhere [The error message if something that is not allowed to attempts to reference content from this domain]`
- `EARPDomainAllowedToReferenceMode ReferenceMode [What content is this domain allowed to access?]`
- `TArray<FName> SpecificAssets [A list of specific assets considered to be part of this domain]`


**方法**:

- `FARPDomainDefinitionByContentRoot& opAssign(FARPDomainDefinitionByContentRoot Other)`

---


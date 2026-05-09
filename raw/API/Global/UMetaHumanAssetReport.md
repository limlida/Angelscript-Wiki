### UMetaHumanAssetReport


A report generated when an asset is imported or tested for MetaHuman compatibility

**方法**:

- `AddError(FMetaHumanAssetReportItem Message)`  
  Adds a user-facing message to appear in the report. This will flag the report as containing warnings and as
having failed.

@param Message The localized error message
- `AddInfo(FMetaHumanAssetReportItem Message)`  
  Adds a user-facing message to appear in the report. This will not flag the report as containing warnings or as
having failed.

@param Message The localized informational message
- `AddVerbose(FMetaHumanAssetReportItem Message)`  
  Adds a user-facing message to appear in the report. This will not flag the report as containing warnings or as
having failed and will be discarded if SetVerbose is not called with a value of true

@param Message The localized informational message
- `AddWarning(FMetaHumanAssetReportItem Message)`  
  Adds a user-facing message to appear in the report. This will flag the report as containing warnings but will
not flag it as having failed.

@param Message The localized warning message
- `FString GenerateHtmlReport() const`  
  Generates an HTML representation of the report
- `FString GenerateJsonReport() const`  
  Generates a JSON representation of the report
- `FString GenerateRawReport() const`  
  Generates a plain text representation of the report
- `FText GenerateRichTextReport() const`  
  Generates a representation of the report suitable for use in an SRichText control
- `EMetaHumanOperationResult GetReportResult() const`  
  Determine whether the report represents a successful operation or not
- `bool HasWarnings() const`  
  Determine whether the report contains non-informational messages
- `SetSilent(bool Value)`  
  Suppress logging of messages from the report
- `SetSubject(FString InSubject)`  
  Set the subject for the report, typically the name of the asset being tested or imported

@param InSubject The Name to appear in the title of the report
- `SetVerbose(bool Value)`  
  Set whether to include verbose items in the report
- `SetWarningsAsErrors(bool Value)`  
  Set whether warnings should be reported as errors

---


### FLocalizationCompilationSettings


**属性**:

- `bool SkipSourceCheck [Should we skip the source check when compiling translations? This will allow translations whose source no longer matches the active source to still be used by the game at runtime.]`
- `bool ValidateFormatPatterns [Should we validate that format patterns are valid for the language being compiled (eg, detect invalid plural rules or broken syntax).]`
- `bool ValidateRichTextTags [Should we validate translated text containing rich text tags to see if the translated text have broken rich text tags. (i.e. "Example of <b>broken tag</")]`
- `bool ValidateSafeWhitespace [Should we validate that text doesn't contain any unsafe whitespace (leading or trailing whitespace) that could get lost during the translation process.]`


**方法**:

- `FLocalizationCompilationSettings& opAssign(FLocalizationCompilationSettings Other)`

---


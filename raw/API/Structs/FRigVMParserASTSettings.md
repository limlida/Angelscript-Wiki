### FRigVMParserASTSettings


* The settings to apply during the parse of the abstract syntax tree.
* The folding settings can affect the performance of the parse dramatically.

**属性**:

- `bool bFoldAssignments [fold root pin assignments / copies]`
- `bool bFoldLiterals [fold literals and share memory]`
- `bool bFoldSubPinCopies [fold sub pin assignments / copies]`
- `bool bSetupTraits`


**方法**:

- `FRigVMParserASTSettings& opAssign(FRigVMParserASTSettings Other)`

---


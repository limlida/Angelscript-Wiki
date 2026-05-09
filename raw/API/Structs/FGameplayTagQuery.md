### FGameplayTagQuery


An FGameplayTagQuery is a logical query that can be run against an FGameplayTagContainer.  A query that succeeds is said to "match".
Queries are logical expressions that can test the intersection properties of another tag container (all, any, or none), or the matching state of a set of sub-expressions
(all, any, or none). This allows queries to be arbitrarily recursive and very expressive.  For instance, if you wanted to test if a given tag container contained tags
((A && B) || (C)) && (!D), you would construct your query in the form ALL( ANY( ALL(A,B), ALL(C) ), NONE(D) )

You can expose the query structs to Blueprints and edit them with a custom editor, or you can construct them natively in code.

Example of how to build a query via code:
    FGameplayTagQuery Q;
    Q.BuildQuery(
            FGameplayTagQueryExpression()
            .AllTagsMatch()
            .AddTag(FGameplayTag::RequestGameplayTag(FName(TEXT("Animal.Mammal.Dog.Corgi"))))
            .AddTag(FGameplayTag::RequestGameplayTag(FName(TEXT("Plant.Tree.Spruce"))))
            );

Queries are internally represented as a byte stream that is memory-efficient and can be evaluated quickly at runtime.
Note: these have an extensive details and graph pin customization for editing, so there is no need to expose the internals to Blueprints.

**属性**:

- `FString AutoDescription [Auto-generated string describing the query]`
- `TArray<uint8> QueryTokenStream [Stream representation of the actual hierarchical query]`
- `TArray<FGameplayTag> TagDictionary [List of tags referenced by this entire query. Token stream stored indices into this list.]`
- `int TokenStreamVersion [Versioning for future token stream protocol changes. See EGameplayTagQueryStreamVersion.]`
- `FString UserDescription [User-provided string describing the query]`


**方法**:

- `FString GetDescription() const`
- `bool IsEmpty() const`
- `bool Matches(FGameplayTagContainer Tags) const`
- `FGameplayTagQuery& opAssign(FGameplayTagQuery Other)`

---


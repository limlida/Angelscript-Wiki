### FActorClassFilter


High-level filter structure used when filtering AActor instances to apply user filters to inside of a UWorld

**属性**:

- `FSoftClassPath ActorClass [Target actor class used when applying this filter]`
- `bool bIncludeDerivedClasses [Flag as to whether or not any derived classes from ActorClass should also be considered when filtering]`


**方法**:

- `FActorClassFilter& opAssign(FActorClassFilter Other)`

---


### UNavigationSystemConfig


**属性**:

- `FName DefaultAgentName [If not None indicates which of navigation datas and supported agents are
going to be used as the default ones. If navigation agent of this type does
not exist or is not enabled then the first available nav data will be used
as the default one]`
- `FSoftClassPath NavigationSystemClass []`
- `FNavAgentSelector SupportedAgentsMask [NavigationSystem's properties in Project Settings define all possible supported agents,
    but a specific navigation system can choose to support only a subset of agents.]`

---


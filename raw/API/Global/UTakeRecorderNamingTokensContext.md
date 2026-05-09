### UTakeRecorderNamingTokensContext


Context object which may be passed to NamingTokens evaluations from within TakeRecorder.
This is stored under TakesCore rather than the TakeRecorderNamingTokensModule for dependency management. Multiple
Take modules need access to the context but don't need access to the NamingTokens themselves and would result
in circular referencing.
---


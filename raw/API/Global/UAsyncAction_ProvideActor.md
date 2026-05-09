### UAsyncAction_ProvideActor


Ask an actor provider to provide its actor - handles polling if the actor can't immediately be provided.
For event-based instead of polling provide a poll interval of -1. Then, make sure your provider calls the OnProvided delegate.
Generally this is not really recommended as polling is pretty inexpensive especially with a reasonable poll time and is much simpler.

**属性**:

- `FOnProviderActorReady OnFailed [called if the provider fails]`
- `FOnProviderActorReady OnProvided [called once the actor is successfully provided.]`


**方法**:

- `EndTask()`  
  when called, sets the task to be ready to destroy, removing all bound events

---


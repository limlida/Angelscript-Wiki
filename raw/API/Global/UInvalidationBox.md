### UInvalidationBox


Invalidate
* Single Child
* Caching / Performance

**属性**:

- `bool bCanCache [Should the invalidation panel cache the widgets?  Making this false makes it so the invalidation
panel stops acting like an invalidation panel, just becomes a simple container widget.]`


**方法**:

- `bool GetCanCache() const`  
  @returns true when the invalidation box cache the widgets.
The widgets will be updated only if they get invalidated.
- `SetCanCache(bool CanCache)`  
  Tell the InvalidationBox to use the invalidation process.
@note the other internal flags can disable the option.

---


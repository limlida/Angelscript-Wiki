### UTaggedAssetBrowserFilterBase


A filter is the base element of the filter hierarchy built in the TaggedAssetBrowserConfiguration asset.
It filters using two methods:
- ModifyARFilter, which modifies the filter used to query the Asset Registry (override the Internal function for your implementation)
- ShouldFilterAsset, which should return true if you want to remove an asset from display. This is for filtering beyond what the ARFilter allows, such as 'Recent' assets.

While filters are generally part of the hierarchy, sections can also specify additional filters
---


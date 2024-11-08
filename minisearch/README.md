This Hugo module mounts [MiniSearch](https://lucaong.github.io/minisearch/)'s `dist` folders to `assets/jslibs/minisearch/v7`.

MiniSearch is an in-memory fulltext search engine written in JavaScript that can be used within a browser.

Features:
- Memory-efficient index, designed to support memory-constrained use cases like mobile browsers.    
- Exact match, prefix search, fuzzy match, field boosting.
- Auto-suggestion engine, for auto-completion of search queries.
- Modern search result ranking algorithm.
- Documents can be added and removed from the index at any time.
- Zero external dependencies.

You can import it into your Hugo site config with:

```toml
[[module.imports]]
path = "github.com/nreckart/hugo-mod-jslibs-dist/minisearch/v7"
```
You can then import it into your JS files with:

```js
import MiniSearch from 'jslibs/minisearch/v7/es/index.min.js'
```

## Updating MiniSearch version

The included `build.sh` shell script can be used to built the library from source to update this Hugo module.

Run: `./build.sh`

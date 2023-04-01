# Haskell Courses

## Prerequisites

- The GHCup Haskell installer, version latest

```sh
    ghcup tui # to easily setup the haskell toolchain
```

- Toolchain

```json
"haskell.toolchain": {
    "hls": "latest",
    "cabal": "latest",
    "ghc": "latest",
    "stack": "latest"
},
```

## Cabal basic commands

- update index from hackage

```sh
cabal update
```

- install dependencies

```sh
cabal install
```

- build

```sh
cabal build
```

- run

```sh
cabal run
```

- repl

```sh
cabal repl
```

- test

```sh
cabal test
cabal test --test-show-details=direct
```

# Haskell Courses

## TODO

- [todo](./doc/todo.md)

## Prerequisites

- The GHCup Haskell installer, version latest

```sh
    brew install ghcup
```

- ghcup configuration, in ~/.zshrc add the following configuration

```text
export PATH="$HOME/.ghcup/bin:$PATH"
```

```sh
    ghcup tui # to easily setup the haskell toolchain
```

- or better install tools one by one

```sh

ghcup install ghc recommended
ghcup set ghc recommended

ghcup install stack recommended
ghcup set stack recommended

ghcup install cabal recommended
ghcup set cabal recommended

ghcup install hls recommended
ghcup set hls recommended
```

- Test the installation of the toolchain

```sh
ghc --version
ghci --version
stack --version
cabal --version
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

- test REST Web Endpoints

```sh
curl -v http://localhost:9090/hello
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

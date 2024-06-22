# storm-mode.nvim

storm-mode.nvim is an LSP client for the [Storm](https://storm-lang.org/)
compiler. It is free software and uses the same license as Storm.

## Requirements

- Neovim >= 0.5.0

## Installation

Lazy.nvim:
```lua
return {
    'HoppenR/storm-mode.nvim',
    lazy = false, -- first load only exposes lazy-loading user-commands
    opts = {
        compiler = vim.fs.normalize('~/projects/storm-lang/storm'),
        root = vim.fs.normalize('~/projects/storm-lang/root/'),
    },
},
```

Rocks.nvim:
`:Rocks install storm-mode.nvim`

## Feature progress

- [x] Global mode (`:Storm global`)

### Client -> Lsp
- [x] quit (`:Storm quit`)
- [x] supported (automatic in global mode)
- [x] open (`:Storm start`)
- [x] close (`:Storm close`)
- [x] edit (partial, desyncs can happen but usually catches up eventually)
- [x] point
- [ ] indent
- [x] color (`:Storm debug recolor`)
- [ ] complete-name
- [ ] documentation
- [x] debug tree (`:Storm debug tree`)
- [x] debug content (`:Storm debug content`)
- [x] error (`:Storm debug error`)

### Lsp -> Client
- [x] supported
- [x] color
- [ ] indent
- [ ] complete-name
- [ ] documentation

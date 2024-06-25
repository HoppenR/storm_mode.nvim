# Changelog

## [1.2.1](https://github.com/HoppenR/storm-mode.nvim/compare/v1.2.0...v1.2.1) (2024-06-25)


### Bug Fixes

* buffer testing ([425a3a3](https://github.com/HoppenR/storm-mode.nvim/commit/425a3a394cb56c5dd18f5129498d5c4cca25894d))

## [1.2.0](https://github.com/HoppenR/storm-mode.nvim/compare/v1.1.0...v1.2.0) (2024-06-23)


### Features

* provide a default location for configuration ([0bfee19](https://github.com/HoppenR/storm-mode.nvim/commit/0bfee1906d5f89fa09c35cabd8c9a2bab3a55c61))

## [1.1.0](https://github.com/HoppenR/storm-mode.nvim/compare/v1.0.0...v1.1.0) (2024-06-22)


### Features

* **buffer/lsp:** implement handler for 'point ([9d7917f](https://github.com/HoppenR/storm-mode.nvim/commit/9d7917f4429718589dbffc16214432c19c44733e))

## 1.0.0 (2024-06-22)


### Features

* **buffer/lsp:** 'quit, 'open, 'close, 'color ([2a3c574](https://github.com/HoppenR/storm-mode.nvim/commit/2a3c574adaeb3e1b5a9faaf69b8d256010f14550))
* **buffer/lsp:** Add basic support for 'edit ([607cc47](https://github.com/HoppenR/storm-mode.nvim/commit/607cc47ad2011fd1dae0f589fd2dc56095aa60f7))
* **buffer/lsp:** Add basic support for 'supported ([94ef635](https://github.com/HoppenR/storm-mode.nvim/commit/94ef63597f5b5869cd0ea1224584faa96fb12886))
* **buffer:** implement rudimentary coloring ([94ce2fa](https://github.com/HoppenR/storm-mode.nvim/commit/94ce2fa7821a687184f696d0339d6b0cb6507f00))
* **commands:** 'debug 'error, add subcommands ([b377888](https://github.com/HoppenR/storm-mode.nvim/commit/b377888fc1e51623824de93665b2f643fa180014))
* **commands:** create lazy loading sub-commands ([84c4d09](https://github.com/HoppenR/storm-mode.nvim/commit/84c4d09388757277a507d719e8ad1d77443f7f16))
* **config:** allow setting highlights in config ([b093b3c](https://github.com/HoppenR/storm-mode.nvim/commit/b093b3c60bdd5ad54cb110dd5eb1778fa68aa543))
* **decode:** Implement ([7ab4f42](https://github.com/HoppenR/storm-mode.nvim/commit/7ab4f42072d2da1498ab3c388d1a78b43ee7d49f))
* **handlers:** implement base for handling msgs ([1578f0e](https://github.com/HoppenR/storm-mode.nvim/commit/1578f0e881da2f19b4bd3d27f316ae5291867bad))
* **health:** for troubleshooting config ([709786c](https://github.com/HoppenR/storm-mode.nvim/commit/709786cfce0bfb2791f8e79a1ce2bd2df6f8ac34))
* **tests:** add tests ([49a3ce4](https://github.com/HoppenR/storm-mode.nvim/commit/49a3ce45993e23436b4d15f365fe15f019836f01))


### Bug Fixes

* **buffer:** delete buf-autocommand on mode unset ([d85e6b2](https://github.com/HoppenR/storm-mode.nvim/commit/d85e6b2b2d2065f9e1b729a3fd0c170a77a5f2b0))
* **buffer:** handle multiple same-type-callbacks ([81a3e66](https://github.com/HoppenR/storm-mode.nvim/commit/81a3e66e79cba3f4645c213955436ba10ca9df1b))
* **decoder:** properly include nil cells ([3254eb2](https://github.com/HoppenR/storm-mode.nvim/commit/3254eb2975c1f8339a36eead37135b51902d2bfe))
* **lsp/buffer:** fix coloring, process all messages ([36964e5](https://github.com/HoppenR/storm-mode.nvim/commit/36964e51bc7d3562e3c67b4b59e1dd989608e2e1))
* various small fixes ([7778ed3](https://github.com/HoppenR/storm-mode.nvim/commit/7778ed33df4fc8f2e43cd7e4311dd66d7c2e3afb))

There's a great video created by [@elijahmanor](https://github.com/elijahmanor) with a walkthrough to get started.

[![Watch the video](https://img.youtube.com/vi/N93cTbtLCIM/hqdefault.jpg)](https://www.youtube.com/watch?v=N93cTbtLCIM)

[@dusty-phillips](https://github.com/dusty-phillips) is working on a book called
[LazyVim for Ambitious Developers](https://lazyvim-ambitious-devs.phillips.codes)
available for free online.

## 📂 File Structure

The files under config will be automatically loaded at the appropriate time,
so you don't need to require those files manually.
**LazyVim** comes with a set of default config files that will be loaded
**_before_** your own. See [here](https://github.com/LazyVim/LazyVim/tree/main/lua/lazyvim/config)

You can add your custom plugin specs under `lua/plugins/`. All files there
will be automatically loaded by [lazy.nvim](https://github.com/folke/lazy.nvim)

<pre>
~/.config/nvim
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── spec1.lua
│       ├── **
│       └── spec2.lua
└── init.lua
</pre>

## ⚙️ Configuration

Refer to the [docs](https://lazyvim.github.io)

Introduction
============

Very simple plugin that adds MATLAB blocks as text objects in Vim. Supported
blocks here are `function`, `while`, `for`, `if` and `switch`. Most
glaringly, it does not support any class-related blocks. It uses

* `am` to select the whole block.
* `im` to select the inner block.

Depends on the [vim-textobj-user](https://github.com/kana/vim-textobj-user)
plugin and is more or less a copy of the equivalent Ruby plugin
[vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock).

# Jorge's Vim configuration 

<img align="right" width="255px;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/544px-Vimlogo.svg.png?20150726190850">

The configuration defined by this repository allows for a minimal but powerful
Vim experience. It minimizes third party plugin usage in favor of various
utilities already implemented in the editor. These include default Vim package
manager, file manipulation, language server protocol (LSP), and many more.


## Installation
Vim looks for the `$VIMINIT` environment variable. This variable must point to
the `vimrc` file declared in this repsitory. It is recommended to clone the
content of this repository in the `~/.config/vimrc` directory. This follows [The
XDG Base Directory Speficification].

```text
curl --proto '=https' --tlsv1.2 -sSf \
    https://raw.githubusercontent.com/jorgepiloto/nvim/main/INSTALL | sh
```

Consider adding the `$VIMINIT` variable in your `$SHELL` dotfiles. This will
ensure that the variable is defined everytime you start a new shell session. 


## Structure and files

```
./jorgepiloto/vimrc
├── LICENSE                               # The license ruling this project
├── README.md                             # Basic info about his project
├── VERSION                               # Version status of this project
├── ftplugin                              # Particular config for file types
├── pack                                  # Extra packages or plugins
├── plugin                                # Plugin configuration
└── vimrc                                 # Main configuration file for Vim
```


## References

* Vim's official webpage: https://www.vim.org/
* Vim's repository: https://github.com/vim/vim

[The XDG Base Directory Speficification]: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html

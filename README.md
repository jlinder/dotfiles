
My dotfiles setup steps
=======================

1. If needed, setup a new ssh key for pushing / pulling my dotfiles repo

    ```bash
    mkdir ~/.ssh
    chmod go-rwx ~/.ssh
    cd ~/.ssh

    # Create a new key
    ssh-keygen
    ```

    Add the key to the ssh keyagent to use it.

    ```bash
    ssh-add ~/.ssh/id_rsa
    ```

1. Clone the repo to `~/dotfiles`

    ```bash
    cd
    git clone git@github.com:jlinder/dotfiles.git
    cd dotfiles
    ```

1. Bootstrap part 1

    ```bash
    ./bootstrap/01-linked-files.sh
    ./bootstrap/02-brew-install.sh
    ```

1. Open a new bash shell.

1. Bootstrap part 2

    ```bash
    ./bootstrap/03-brew-update.sh
    ./bootstrap/04-language-installation.sh
    ```

1. Open a new bash shell.

1. Bootstrap part 3

    ```bash
    ./bootstrap/05-python-setup.sh
    ./bootstrap/06-vim.sh
    ```

    This will drop you into vim to do the vim setup

1. Vim setup

    :LspInstall awk

    LSPs to install:

        awk
        bash
        clangd
        cmake
        css
        cssmodules
        dockerfile
        elixer
        eslint
        gopls
        gradle
        graphql
        groovy
        html
        jq
        json
        lua
        nginx
        pyright
        ruby
        sql (sqlls)
        terraform
        tflint
        typescript
        vim
        yaml

    :TSInstall awk bash c cmake commonlisp cpp css diff dockerfile elixir fish git_rebase gitattributes
    :TSInstall gitcommit gitignore go gomod graphql html http java javascript jq jsdoc json json5 jsonc
    :TSInstall lua make markdown markdown_inline org python regex ruby scheme scss sql terraform toml
    :TSInstall typescript vim yaml

    :PackerClean
    :PackerSync


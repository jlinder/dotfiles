
My dotfiles setup steps
=======================

1. Clone the repo to `~/dotfiles`

1. Run the bootstrap

    ```bash
    ./bootstrap.sh
    ```

1. Install nvim plugins

    ```
    nvim
    :PlugInstall
    :UpdateRemotePlugins
    :q!
    :q!
    ```

1. If needed, setup a new ssh key for pushing / pulling my dotfiles repo

    ```bash
    mkdir .ssh
    chmod go-rwx .ssh

    # Create a new key at ~/dotfiles/.ssh/id_rsa
    ssh-keygen

    git config core.sshCommand "ssh -i ~/dotfiles/.ssh/id_rsa -F /dev/null"
    ```

    Add the key to the ssh keyagent to use it.

    ```bash
    ssh-add ~/dotfiles.ssh/id_rsa
    ```

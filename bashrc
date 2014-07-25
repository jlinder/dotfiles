if [ -f ~/bin/dotfiles/bash/local ]; then
    . ~/bin/dotfiles/bash/local
fi

. ~/bin/dotfiles/bash/env
. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases
. ~/bin/dotfiles/bash/functions

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

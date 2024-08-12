alias dockappsrun="docker run --restart=on-failure -p 80:8787 -v $(pwd)/client:/usr/src/app/client hamad_apps sh -c \"npm run dev\""
alias lzsh="lvim ~/.zshrc"
alias sauce="source ~/.zshrc"
alias compileray="clang -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL libraylib.a"
alias runray="compileray main.c -o main && ./main"
alias zb="zig build"


eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/M365Princess.omp.json)"
eval "$(zoxide init zsh)"

export PATH="$PATH:/Users/chocomac/SDKs/flutter/bin"


source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
# export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=/Users/chocomac/.local/bin:$PATH




alias fbeqs="firebase emulators:start --export-on-exit --import firebase_backup"
alias py=python3
alias bs="browser-sync start --server --directory --files \"*\""

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH=$PATH:/Users/chocomac/zig-macos-aarch64-0.12.0

autoload -Uz compinit && compinit

export GOPATH=$HOME/go

HOMEBREW_ENV_HINTS=1


echo ".zshrc: deactivating conda"
conda deactivate

echo ".zshrc: chruby-ing to 3.3.4"
chruby 3.3.4

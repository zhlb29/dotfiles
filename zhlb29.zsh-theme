username() {
    echo "%F{yellow}<%f%F{yellow}%n%f%F{cyan}@%m%f%F{yellow}>%f"
}

current_directory() {
    echo "%F{magenta}[%~]%f"
}

indicator() {
    echo "%(?.%F{green}%(!.#.$)%f.%F{red}%(!.#.$)%f)"
}

current_time() {
    echo "%F{white}%*%f"
}

# git_prompt_info
ZSH_THEME_GIT_PROMPT_PREFIX="%F{green}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{green})%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(username) $(current_directory) $(git_prompt_info)
$(indicator) '
RPROMPT='$(current_time)'
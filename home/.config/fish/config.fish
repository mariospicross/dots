if status is-interactive
    # load alias file
    if [ -f $HOME/.config/fish/aliases.fish ]
      source $HOME/.config/fish/aliases.fish
    end

    # don't shorten directory names
    set fish_prompt_pwd_dir_length 0

    # configure thefuck alias
    thefuck --alias | source
end

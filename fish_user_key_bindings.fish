function fish_user_key_bindings
    # Arrow up behaves like normal fish history (not Atuin)
    bind \e\[A up-or-search

    # Ctrl-R opens Atuin search
    bind \cr _atuin_search

    # Option + Arrow for prefix history search
    bind \e\[1\;3A history-prefix-search-backward
    bind \e\[1\;3B history-prefix-search-forward
end
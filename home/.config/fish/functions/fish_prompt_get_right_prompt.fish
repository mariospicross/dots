function fish_prompt_get_right_prompt --description 'Get right prompt content'
    # if git repository
    if git rev-parse --git-dir > /dev/null 2>&1
        set -l cl_gorse 'D24527'
        set -l cl_empress '585b70'
        set -l cl_black '000000'
        set_color $cl_gorse -b normal
        printf ''
        set_color $cl_black -b $cl_gorse
        printf '  '
        set_color $cl_empress -b $cl_gorse
        printf ''
        set_color 'cdd6f4' -b $cl_empress
        printf ' %s' (fish_git_prompt '%s')
        set_color normal
    else
        printf ' '
    end
end

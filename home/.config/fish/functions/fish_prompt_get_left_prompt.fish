function fish_prompt_get_left_prompt --description 'Get first line left prompt content'
    set -l cl_blue_1 '313244'
    set -l cl_blue_2 '45475a'
    set -l cl_blue_3 '585b70'
    set -l cl_text 'cdd6f4'
    set_color white -b $cl_blue_1
    printf ' %s ' (whoami)
    set_color normal
    set_color $cl_blue_1 -b $cl_blue_2
    printf ''
    set_color $cl_text -b $cl_blue_2
    if [ (prompt_pwd) = '~' ]
        printf '  ~ '
        set_color $cl_blue_2 -b normal
        printf ''
    else if [ (prompt_pwd) = '/' ]
        printf '  / '
        set_color $cl_blue_2 -b normal
        printf ''
    else
        printf '  '
        set_color $cl_blue_2 -b $cl_blue_3
        printf ''
        set_color $cl_text -b $cl_blue_3
        printf ' %s ' (prompt_pwd)
        set_color $cl_blue_3 -b normal
        printf ''
    end
    set_color normal
end

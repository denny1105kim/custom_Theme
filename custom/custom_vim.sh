#!bin/bash

# Vim 설정을 자동으로 추가하는 함수
add_vim_config_to_bashrc() {
    # Vim 설정을 추가할 내용
    vim_config="# Vim 설정을 자동으로 추가\nexport PROMPT_COMMAND='echo -ne \"\033]0;\${PWD##*/}\007\"'\nalias vim='vim +\"set statusline=%F\\ %l\"'\n"

    # .bashrc 파일 경로
    bashrc_file="$HOME/.bashrc"

    # .bashrc 파일에 설정 추가
    echo -e "$vim_config" >> "$bashrc_file"

    # 성공 메시지 출력
    echo "Vim 설정이 .bashrc 파일에 추가되었습니다."
}

# 함수 호출
add_vim_config_to_bashrc

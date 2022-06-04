######################################################
#               _____ _   _ _____  _    _ _______    #
#              |_   _| \ | |  __ \| |  | |__   __|   #
#     __ _  ___  | | |  \| | |__) | |  | |  | |      #
#    / _` |/ _ \ | | | . ` |  ___/| |  | |  | |      #
#   | (_| | (_) || |_| |\  | |    | |__| |  | |      #
#    \__, |\___/_____|_| \_|_|     \____/   |_|      #
#     __/ |                                          #
#    |___/                                           #
#                                                    #
######################################################

install_zsh:
    pkg.installed:
        - pkgs:
            - zsh

get_ohmyzsh_repo_root:
    git.latest:
        - name: https://github.com/goINPUT-IT-Solutions/salt-hetzner.git
        - target: /srv/salt   

/etc/skel/.oh-my-zsh:
    file.recurse:
        - source: salt://zsh/files/..oh-my-zsh
        - include_empty: True

/etc/skel/.zshrc:
    file.managed:
        - source: salt://zsh/files/.zshrc
        - user: root
        - group: root
        - mode: 0644

/root/.oh-my-zsh:
    file.recurse:
        - source: salt://zsh/files/.oh-my-zsh
        - include_empty: True

/root/.zshrc:
    file.managed:
        - source: salt://zsh/files/.zshrc
        - user: root
        - group: root
        - mode: 0644

/etc/adduser.conf:
    file.managed:
        - source: salt://files/etc/adduser.conf
        - user: root
        - group: root
        - mode: 0644
    
root:
  user.present:
    - shell: /bin/zsh

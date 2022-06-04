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

skel_.oh-my-zsh:
    git.latest:
        - name: https://github.com/ohmyzsh/ohmyzsh.git
        - target: /etc/skel/.oh-my-zsh

skel_zsh-autosuggestions:
    git.latest:
        - name: https://github.com/zsh-users/zsh-autosuggestions.git
        - target: /etc/skel/.oh-my-zsh/custom/plugins/zsh-autosuggestions

skel_zsh-syntax-highlighting:
    git.latest:
        - name: https://github.com/zsh-users/zsh-syntax-highlighting.git
        - target: /etc/skel/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

/etc/skel/.zshrc:
    file.managed:
        - source: salt://zsh/files/_zshrc
        - user: root
        - group: root
        - mode: 0644

root_.oh-my-zsh:
    git.latest:
        - name: https://github.com/ohmyzsh/ohmyzsh.git
        - target: /root/.oh-my-zsh

root_zsh-autosuggestions:
    git.latest:
        - name: https://github.com/zsh-users/zsh-autosuggestions.git
        - target: /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions

root_zsh-syntax-highlighting:
    git.latest:
        - name: https://github.com/zsh-users/zsh-syntax-highlighting.git
        - target: /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

/root/.zshrc:
    file.managed:
        - source: salt://zsh/files/_zshrc
        - user: root
        - group: root
        - mode: 0644

    
root:
  user.present:
    - shell: /bin/zsh

/etc/adduser.conf:
    file.managed:
        - source: salt://files/etc/adduser.conf
        - user: root
        - group: root
        - mode: 0644

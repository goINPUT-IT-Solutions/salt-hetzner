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

install_fortune:
    pkg.installed:
        - pkgs:
            - git
            - python3
    
    git.latest:
        - name: https://github.com/mubaris/motivate.git
        - target: /opt/motivate

run_installer:
    cmd.run:
        - name: sh /opt/motivate/motivate/install.sh > /dev/null 2>&1

/root/.bashrc:
    file.managed:
        - source: salt://files/.bashrc
        - user: root
        - group: root
        - mode: 644

/etc/skel/.bashrc:
    file.managed:
        - source: salt://files/.bashrc
        - user: root
        - group: root
        - mode: 644

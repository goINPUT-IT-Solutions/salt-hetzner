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
        - name: /opt/motivate/motivate/install.sh > /dev/null 2>&1

install_to_root_profile:
    file.append:
        - name: /root/.bashrc
        - text: |
            
            /usr/local/bin/motivate

install_to_profiles:
    file.append:
        - name: /etc/.bashrc
        - text: |
            
            /usr/local/bin/motivate

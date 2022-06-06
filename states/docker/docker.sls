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

docker_repo:
    pkgrepo.managed:
        - humanname: Docker
        - name: deb {{ pillar['docker-repo'] }} {{ grains['oscodename'] }} stable
        - file: /etc/apt/sources.list.d/docker.list
        - key_url: {{ pillar['docker-gpg'] }}

#install_docker:
#    pkg.installed:
#        - require:
#            - pkgrepo: docker_repo
#        - pkgs:
#            - ca-certificates
#            - curl
#            - gnupg
#            - lsb-release
#            - docker-ce 
#            - docker-ce-cli 
#            - containerd.io 
#            - docker-compose-plugin
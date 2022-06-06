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

/etc/apt/keyrings:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644

docker_gpg_key:
  cmd.run:
    - name: curl -fsSL {{ pillar['docker-gpg'] }} | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    - creates: /etc/apt/keyrings/docker.gpg

docker_repo:
    pkgrepo.managed:
        - humanname: Docker
        - name: deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] {{ pillar['docker-repo'] }} {{ grains['oscodename'] }} stable
        - file: /etc/apt/sources.list.d/docker.list

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
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

javik:
  user.present:
    - fullname: Benjamin Schneider
    - shell: /bin/zsh
    - home: /home/javik
    - groups:
      - staff
      - adm
      - sudo
    - password: $5$aX6bcjk/nwMGEwOE$tOVfAMKbB0l7zbAnuKmgOc4t84Yhl7Yyev2mMTWgA98

AAAAC3NzaC1lZDI1NTE5AAAAIFe4eGJe8Ez/zOPGpS/yGOsToPQjY3ZAmw6rWjcel2NN:
  ssh_auth.present:
    - user: javik
    - enc: ssh-ed25519
    - comment: Javik OpenSSH Key for Stargazer
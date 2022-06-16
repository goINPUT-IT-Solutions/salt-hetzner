#!jinja|yaml|gpg
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

users-formula:
  use_vim_formula: true
  lookup:  # override the defauls in map.jinja
    root_group: root

users:
  bschneider:
    fullname: Benjamin Schneider
    sudouser: true
    ssh_auth_file:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgo2OfSxiMyuLPrChe7a/0ySXcWnGLOBXYfpH8/slpC Javik OpenSSH Key for Hikari
  
  ewolfhard:
    fullname: Elias Wolfhard
    sudouser: true
    ssh_auth_file:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgo2OfSxiMyuLPrChe7a/0ySXcWnGLOBXYfpH8/slpC Javik OpenSSH Key for Hikari

  nbuchert:
    fullname: Nina Buchert
    sudouser: false
    ssh_auth_file:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgo2OfSxiMyuLPrChe7a/0ySXcWnGLOBXYfpH8/slpC Javik OpenSSH Key for Hikari
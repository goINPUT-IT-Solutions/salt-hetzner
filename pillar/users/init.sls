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
    password: $5$.B686jLYIs$d1dzVn.0Lax7LFes91POBEPGEzVH/r2JuCd.o526KV2
    ssh_auth_file:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgo2OfSxiMyuLPrChe7a/0ySXcWnGLOBXYfpH8/slpC Javik OpenSSH Key for Hikari
  
  ewolfhard:
    fullname: Elias Wolfhard
    sudouser: true
    password: $5$3WznCT82Bj$qJhiLCblQK1atb.432uUM0HwTjt1.K9e1iwD4FlnsA/
    ssh_auth_file:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgo2OfSxiMyuLPrChe7a/0ySXcWnGLOBXYfpH8/slpC Javik OpenSSH Key for Hikari

  nbuchert:
    fullname: Nina Buchert
    sudouser: false
    password: $5$aYTCkrPF$Qt3gWGo9FsPzOQMmQYTLG6gnyVlp2jMXAF5Eg6k6zI/
    ssh_auth_file:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgo2OfSxiMyuLPrChe7a/0ySXcWnGLOBXYfpH8/slpC Javik OpenSSH Key for Hikari
      
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
    sudo_rules:
      - ALL=(ALL:ALL) ALL
    password: |
      -----BEGIN PGP MESSAGE-----

      hQIMA87Mx7rf5Y5rAQ//VwY/SrPkg/m0/zdE2xwC8CdOCmfdEcyAyHkD3D/9OaNG
      2WakZVVeGqIbevY11+TXC+RWwLKCuQ3dKkGD8AynsvEdeRdFML13jf4CziLgRrXE
      w3MDERHXzJpfcfM6WsY8eqZn+MujmSAdJar2rMH6Tx9fBymfavwZLhFDDbo+ZJl8
      hKJtpu9OplXux3V6rWZ+kQb+m+YwUt2X5setjevhvjLOkwwpUdsa2vVTox3N/p5X
      5SMCczbe2AYpfehEFglo6juoTQFUiI6HZqznoQHlAmVcs9f3DKBXb4oTKHzJhSaR
      dSv9rdeZUySPbLoSg8piBD/0KRFOQK6DfDmt4qjxAe2MX9k1OU1V5cumJrcUZcex
      VZtlSdpl5Rvc1jlLI8xr9j7dqtdWDxI2zxPC/Y+aB6Li/RD/tKCq9fXKFEAQleWg
      F1rlFO0eLHZzF61uBXG/UiKoknAF80R6+kyRhOJ3JYxV6vfcukyCyGULscDr/fF3
      wzmFW6sFt4B/xONHKFY6rsZI76XrNjoYRuKE53ebDhWltEVuMMU5BK/fD1aA5Ymr
      6F6WmStkCxhbKhr3Qk1LPPyaFxZO455V7MmZ5ocEFG8sybguJpb7qbjgQvI/QcRV
      niWG/Zg6UZd8ltecag6/8TfIjsV3a2VL5qYw74rNQeYiu3Rmr7bZCHgKrQDG0h/S
      dAH14GArme8rtoGUy0ToCYQyko28Q7TOlDIwmrcyUBgbbQi7MEoUjNFq2JbBeHsC
      OwrXpfyxKe8K9x5b3cPz8zDaLaH1obMtXBwJSNIAapQRnbhjQxK+PRJrSnyIzv7g
      U4KxX8+gDujvlsSvjyHFfixZj9mH
      =VGmN
      -----END PGP MESSAGE-----
    ssh_auth_file:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgo2OfSxiMyuLPrChe7a/0ySXcWnGLOBXYfpH8/slpC Javik OpenSSH Key for Hikari
  
  ewolfhard:
    fullname: Elias Wolfhard
    sudouser: true
    sudo_rules:
      - ALL=(ALL:ALL) ALL
    password: $5$3WznCT82Bj$qJhiLCblQK1atb.432uUM0HwTjt1.K9e1iwD4FlnsA/
    ssh_auth_file:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgo2OfSxiMyuLPrChe7a/0ySXcWnGLOBXYfpH8/slpC Javik OpenSSH Key for Hikari

  nbuchert:
    fullname: Nina Buchert
    sudouser: false
    password: $5$aYTCkrPF$Qt3gWGo9FsPzOQMmQYTLG6gnyVlp2jMXAF5Eg6k6zI/
    ssh_auth_file:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgo2OfSxiMyuLPrChe7a/0ySXcWnGLOBXYfpH8/slpC Javik OpenSSH Key for Hikari

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

users:
  javik:
    fullname: Benjamin Schneider
    shell: /bin/zsh
    home: /home/javik
    groups:
      - staff
      - adm
      - sudo
    password: |
      -----BEGIN PGP MESSAGE-----

      hQIMAy52OW+QTAwqARAAy4fZFeqzKQvdxc/sBYaHyak/rWg+XJSf3G/BQpGrktjh
      eVWMRSaZ0GelhezM0GGDmOxgdgkdgHq3ivXce0urd/yvYa4ER0dNa6zTGd52iqMo
      7V0eT7ZB1gnxI63CX9wGqWHkPwSwhhSixzjjuqrRC81uUi+OOQg3jJqCimdbwbJH
      2NIiUzNhwQuAZrCtXDCUurh+9f9pDHD8SWx0YmARt9AWEgcKXpB7JjfywwD+eE9Y
      BtQVCJ1SeXCP/DcD4/jgVZHEfxsG3evyDK/fYrt9zcNeDLA7h/J52ir1Fmxen9/f
      on3t/UQnoOHxkobEIJh3faqy7pdmUzEl8a3xEFzWcp1stWurxUmLNagol15tBIbd
      VeSZ2edzy0aSpQtDNxSQI4kcSlBt7hWu2NTWa3zoaXCB5MiP7dkCycYeAKxndIEK
      jMI0cICZz6IycUrqzPfw8oscOqPZNW6VuUP8TaiZDImiMl3yzhOf2DWMUxQ5T2Lg
      bXdQOKKeIj5m/p4fT1tiNN4MqQgqCqYTc4QfbGAxR1zQW2S/w9mDMHsWkZFtO+LM
      QwkmZ+Q1093dtemV+t7681dfA1aa/DUGcUx2zWWCIV7LFjEXDv71/Sv3/JORD7mx
      FVnyKGKjFt8e/AtPP1vjJk3QhyvmKHufepgpZ/ca4qHaKYjME7djHnTWJMYVUVbS
      XAG5zKpzzHCIYH/LMRbGQs5pgfZYUMWgrII+v4bK+VM6PqHrJG2ts3vp+VB6VkbK
      x36uL/bWC2uC8T5ErA37GSjzEnSM9+cXMky6aqQEZcNg2DuILRuWxtudfkig
      =UVpX
      -----END PGP MESSAGE-----
    ssh_auth_key:
      public_key: AAAAC3NzaC1lZDI1NTE5AAAAIFe4eGJe8Ez/zOPGpS/yGOsToPQjY3ZAmw6rWjcel2NN
      enc: ssh-ed25519
      comment: Javik OpenSSH Key for Stargazer
      
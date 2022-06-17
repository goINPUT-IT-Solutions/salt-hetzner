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
    password: |
      -----BEGIN PGP MESSAGE-----

      hQIMA87Mx7rf5Y5rAQ/+IceGjviGtKJyJJ+MJzgqFnK5kOakZnolFGKLymbqrTkp
      pUZrkS4NCow7gcxu5iIRRklCgD2ugCxxsxL+HWVeaUO6SE2Bk0En0zdHc12tvHmz
      Oi3UJUSYUNwJTlKgxOGLAc7bUYRTYRjSKIW/uPE7yDqO34qn4W7JAjVnptF7pS5w
      47xeRI/nTgJky0+FNC0uT7JaAW0KUtDNQyWHGCC2LKB6HGKLZFXoB4iGBgR8yF7h
      OnfsKXZLFj9VSnMaxatDvgLLDI1TxA3LibBPujBhUV9MDqYKX3EBvS1SbKYbCfES
      pDY/uGdfjzClX7DrsW0Au0YYqDjImKmFS0wNKj0JEFDx1bKB7eVPdAuwsv9SkV5m
      QWwZi4boI3eEe4b3OIIo7fD9bE/LoreQLzhxKYIxJ0Vae0vCtSNrm/VKh4G/z8mg
      oczP7eoeHil31DUBnPbqKvSxsBvr20rOx4c06aJ+QX0x2U4vkzFoCuxfeal7zBAc
      t8ejzqbhQIyiweQZgW9RtQsROl7yRQgAxezPpfHKSWbVYaihEUti8DAezuKwdwof
      9gumB57psD3+v3MZOG2dCaet0/ufOyenV98TwlPvcksOtD67SOYQkOtpOXQV3Vc6
      xCVngP8xwtQQ0OlMYf9p+SOs/MCdL6KtO9+ZdYICOfT5Rduc1Vg1NKLyLG/Dv/HS
      cAFIe+e7wWJZKJxBk7ePZgx3I9A6U6VQ3VJL4bPU6IxYroY8PKqtdkMN+2RDh0M4
      Ak1HDNJ7L09NhqimCgyyVodM2LcQHi+0zKVmohAbdKQLwWYA7DG7CVDX3SIJ9rll
      5gBv+TDB6/6pQmNe0gRVVh8=
      =T3qf
      -----END PGP MESSAGE-----
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
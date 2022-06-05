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

{% if grains['os'] == 'Ubuntu' %}
docker-repo: https://download.docker.com/linux/ubuntu
docker-gpg: https://download.docker.com/linux/ubuntu/gpg
{% elif grains['os'] == 'Debian' %}
docker-repo: https://download.docker.com/linux/debian
docker-gpg: https://download.docker.com/linux/debian/gpg
{% endif %}
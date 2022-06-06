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

add_domain:
    module.run:
        http.query:
            - url: http://localhost/api/v1/add/domain
            - method: POST
            - header_list:
                - X-API-KEY: {{ pillar['mailcow']['API-KEY'] }}
            - data: |
                {
                "active": "1",
                "aliases": "400",
                "backupmx": "0",
                "defquota": "3072",
                "description": "some decsription",
                "domain": "domain.tld",
                "mailboxes": "10",
                "maxquota": "10240",
                "quota": "10240",
                "relay_all_recipients": "0",
                "rl_frame": "s",
                "rl_value": "10",
                "restart_sogo": "10",
                "tags": [
                    "tag1",
                    "tag2"
                ]
                }
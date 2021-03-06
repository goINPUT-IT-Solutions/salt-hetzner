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

cron:
  enabled: true     
  tasks:
    salt-call:
      type: present  
      name: salt-call state.apply > /dev/null >/dev/null 2>&1
      user: root
      minute: '*/5'
      hour: '*'
      comment: Automatic run of salt-call every 5 minutes.
      
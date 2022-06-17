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

php:
  # Use the following values to mute deprecation warnings
  warning_messages:
    v1.0.0:
      mute_critical: true
      mute_upcoming: true
  use_external_repo: true
  version: "8.0"
  alternatives_version: "7.4"

  # php-cli settings
  cli:
    # settings to manage the cli's php.ini
    ini:
      # opts passed forward directly to file.managed
      opts:
        replace: false
      # contents of the php.ini file that are merged with defaults
      # from php.ini.defaults. See php.ini.defaults for ini-style
      # syntax guidelines
      settings:
        PHP:
          engine: 'Off'
          
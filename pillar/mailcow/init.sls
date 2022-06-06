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

mailcow:
    MAILCOW_HOSTNAME: {{ grains['host'] }}
    MAILCOW_PASS_SCHEME: BLF-CRYPT
    DBNAME: mailcow
    DBUSER: mailcow
    DBPASS: |
        -----BEGIN PGP MESSAGE-----

        hQIMAy52OW+QTAwqAQ//dk7MwMmjkW2d+a8aut6EEggVQhmM6/avVYY/6wK5EF4u
        dtK+9N7eTsts8/fPDkFZGQmd797SXNwNDi0Qmy5t6jxITntzD4tMWjumxLKBO/BV
        mm8MWmok/Ia9N7ayjvqC2wB4lN1GLX5h7E18S3nv9BdUF0fsoWVDzpNYfMbpCymS
        55oL3pbNWNhbd1JNRfrTjvPvM2rFjefteEH63hp2P1SgU3WO4QPDOBWIrArG5BIg
        e6jR/w6q+4pDrYJp8gSPl/sxnIPutYWtr1e7Ziq1Gl4CCTS0u5SLveuxNxSTvBqe
        YFFyAQqjKbiHXMOsikVMOaDqymb8/EI5lKDX2UGK8AoBRgXUkc+1exCqgcqwerGP
        Ju8FHSvdfKdHmqMIPDsXHPv1gNcVmY44YDFn7wvCxDNp3N72N4dpZSdkxZ0vF03s
        1xroi0WecnMNaxY3u1+1jx78InSV0YJ83pA/jZbYrFp12rwOiDxo9uZPF6C7TOJK
        pDFn6/0Vu2ZZpQTPiqrbuX0tDOKqd7ovcNFD2TYISLTL7MB6BvpYrX0EVUjiGLX9
        XLQGvK+WgbryenABU9Oky2Wzwi5C5XmTWIq4UgqH6FzkJ0d2ccDP29bOD9HW3Mqt
        unQe/KGnmZlYlXlrbnst/OOBw+J2hmF69ENhScF2hitBcT+txKRs2dCG20C5L8DS
        VwF8fWXV0ZWfgcA29HQhuaGOmuZs5/HNmuanLtS6RWlUyo9rFCOWE3+upjWgc0k7
        7AsSsoQ8vGyyuxaUAE9Dn4MotOailfzUGmoV6g5HVkE/Tw+T02H7PA==
        =YYbc
        -----END PGP MESSAGE-----
    DBROOT: |
        -----BEGIN PGP MESSAGE-----

        hQIMAy52OW+QTAwqAQ/9EHf86yFhgwxdKorgEtvoe1JMlH2lWoq9weWoaaPG2AO6
        mYJNZb51+EHwWlumBcgRXurIPTQ+ARH3QVUOhd+XOBz/xWOeL5au3DuVcJ2EU4Yg
        ib88/qnXHIW/9oCstkx0MXKyXqpIhqAqlUvR3fi6lmqIbSGWt86VwBp/aXvD350T
        1TRMTKD9gOohY7qhg7RTqskJ6hUjbitDQL3anW4abwKYcbV/SlwRmC/ptO3lM9E0
        Bh/d58IQyHdVVsrCUZ34AiuMuHDQLG9pWXccjKGrqoFcuGhH/1PmmVJDzKjRCWPM
        ISi5iYf0Xe+zd+DU0D3DnEO9DuHs0M7qXSHbDENbUarehMhDx2ExnHN0VAezc62T
        VW0c4BMAsYYyeisaiO3nrTJO7beOVkLe9Jalkg06M2tYeUSa5AncK5CMZ50Mapca
        XJbGf8to/Xlft7y1xm64D4J+gU7f1w6Wn5zB9EYCOWV20fOZyIu3lo+36KY+bRTY
        8ts5dAGKn49b6t2xb7R28x78TynP2g9858mc+eSUA0LTN3kYhOlTwztpvlZOdmqW
        vjGWV6rnzdoOxxcWayUKTYipXXfvsZMi4/jzY8eOmmIs5X6i+TjMHeBop0uvXp44
        HA6G1+9edwR27OJi6tsKI2GuQ+wHx7sBCGHSpM1vCORGjbjDrprlQwhDHsk76YjS
        VwGC+XH2eFIvtbH7xWfCjHpd4jOxMAFH3K0Kbune7gwvgvK+xWY0p7x1Fqu29lC4
        tupTfUthLkHNZJ/v5qws2UnkbcTZmHlsEfcoKWbU3eruHFteRIPRuQ==
        =9/x/
        -----END PGP MESSAGE-----

DBPASS: |
    -----BEGIN PGP MESSAGE-----

    hQIMAy52OW+QTAwqAQ//dk7MwMmjkW2d+a8aut6EEggVQhmM6/avVYY/6wK5EF4u
    dtK+9N7eTsts8/fPDkFZGQmd797SXNwNDi0Qmy5t6jxITntzD4tMWjumxLKBO/BV
    mm8MWmok/Ia9N7ayjvqC2wB4lN1GLX5h7E18S3nv9BdUF0fsoWVDzpNYfMbpCymS
    55oL3pbNWNhbd1JNRfrTjvPvM2rFjefteEH63hp2P1SgU3WO4QPDOBWIrArG5BIg
    e6jR/w6q+4pDrYJp8gSPl/sxnIPutYWtr1e7Ziq1Gl4CCTS0u5SLveuxNxSTvBqe
    YFFyAQqjKbiHXMOsikVMOaDqymb8/EI5lKDX2UGK8AoBRgXUkc+1exCqgcqwerGP
    Ju8FHSvdfKdHmqMIPDsXHPv1gNcVmY44YDFn7wvCxDNp3N72N4dpZSdkxZ0vF03s
    1xroi0WecnMNaxY3u1+1jx78InSV0YJ83pA/jZbYrFp12rwOiDxo9uZPF6C7TOJK
    pDFn6/0Vu2ZZpQTPiqrbuX0tDOKqd7ovcNFD2TYISLTL7MB6BvpYrX0EVUjiGLX9
    XLQGvK+WgbryenABU9Oky2Wzwi5C5XmTWIq4UgqH6FzkJ0d2ccDP29bOD9HW3Mqt
    unQe/KGnmZlYlXlrbnst/OOBw+J2hmF69ENhScF2hitBcT+txKRs2dCG20C5L8DS
    VwF8fWXV0ZWfgcA29HQhuaGOmuZs5/HNmuanLtS6RWlUyo9rFCOWE3+upjWgc0k7
    7AsSsoQ8vGyyuxaUAE9Dn4MotOailfzUGmoV6g5HVkE/Tw+T02H7PA==
    =YYbc
    -----END PGP MESSAGE-----
DBROOT: |
    -----BEGIN PGP MESSAGE-----

    hQIMAy52OW+QTAwqAQ/9EHf86yFhgwxdKorgEtvoe1JMlH2lWoq9weWoaaPG2AO6
    mYJNZb51+EHwWlumBcgRXurIPTQ+ARH3QVUOhd+XOBz/xWOeL5au3DuVcJ2EU4Yg
    ib88/qnXHIW/9oCstkx0MXKyXqpIhqAqlUvR3fi6lmqIbSGWt86VwBp/aXvD350T
    1TRMTKD9gOohY7qhg7RTqskJ6hUjbitDQL3anW4abwKYcbV/SlwRmC/ptO3lM9E0
    Bh/d58IQyHdVVsrCUZ34AiuMuHDQLG9pWXccjKGrqoFcuGhH/1PmmVJDzKjRCWPM
    ISi5iYf0Xe+zd+DU0D3DnEO9DuHs0M7qXSHbDENbUarehMhDx2ExnHN0VAezc62T
    VW0c4BMAsYYyeisaiO3nrTJO7beOVkLe9Jalkg06M2tYeUSa5AncK5CMZ50Mapca
    XJbGf8to/Xlft7y1xm64D4J+gU7f1w6Wn5zB9EYCOWV20fOZyIu3lo+36KY+bRTY
    8ts5dAGKn49b6t2xb7R28x78TynP2g9858mc+eSUA0LTN3kYhOlTwztpvlZOdmqW
    vjGWV6rnzdoOxxcWayUKTYipXXfvsZMi4/jzY8eOmmIs5X6i+TjMHeBop0uvXp44
    HA6G1+9edwR27OJi6tsKI2GuQ+wHx7sBCGHSpM1vCORGjbjDrprlQwhDHsk76YjS
    VwGC+XH2eFIvtbH7xWfCjHpd4jOxMAFH3K0Kbune7gwvgvK+xWY0p7x1Fqu29lC4
    tupTfUthLkHNZJ/v5qws2UnkbcTZmHlsEfcoKWbU3eruHFteRIPRuQ==
    =9/x/
    -----END PGP MESSAGE-----
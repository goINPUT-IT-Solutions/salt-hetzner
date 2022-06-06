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

        hQIMAy52OW+QTAwqARAAh3C6s8yLK9T7GHEI5Q9rtPyL+eS5EC3xTiH4vQodfzuU
        NuC4gOW1havFyXNI8vYOThtwVjJ1gOy8+0+wOOa1rZ56AYrxTz6W+VigUUv2oCVm
        lN3T9xkAwSnJn/jIzBssI3bXUi5/XtAPXowi7wEL6JSAPjbXgbHAnKvxuawx72Xv
        RBctXR6JEEQbcDRLuTMjxyti7zAqEVCnwMlrmrVAVKQwwcKGVH3H2U01nf50zPMR
        Lf7tVZcqrJd1C36fK7cGrFHcKS/yNsRQYjbBordyxbwihKZAV8fvEnJenfhv/+9d
        br3zG6mumQ3RWvuKhKzuTV2K3ezSqpW9NZYJh7mkotwZ/l6r1ybbqm6UbWy1jAxU
        Z/mJnCSOruXKsR6LiHjcYjbAn5Dmn/hf56j3qspCV0BCs1KcC1q8nuHLbYdYV9ec
        H+tEfPj8fKoAU8G6J09IumpmiEKbteXnM6iC8xjjQTmSn3LM2bmiYAMCXA0mPR0o
        z7EdD3Nkm5DSbLZemFlwxKj5I78SKq4243j9+7NsFxcWMv21Nq88ymg1T6xQOh72
        bllD2SGyjAeVJLC9mKNiu3e/pjpa6usQIYh9CcwmtV9lPECSYvu3EzEhwTMHr+bC
        16LKjcvSSktuJ+9bXyXk0UFKnUw/aUrxMAHtxeDbRhw4UmG9+FKJKHgG2FWcwpjS
        VwGhNxL1KTijjFASLjs8Au4Z26FAYNWOXgsjLR5Qh8f5OMHOCtn+VHvXehcgPDDB
        N8S0V9uDuGkA0WoU2Glf0cxXhfhv9P/GiwfvpJtRtNs00Pud7wtZUQ==
        =Tjrq
        -----END PGP MESSAGE-----


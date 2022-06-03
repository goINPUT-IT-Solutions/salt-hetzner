install_apache2:
    pkg.installed:
        - pkgs:
            - apache2
            - apache2-doc
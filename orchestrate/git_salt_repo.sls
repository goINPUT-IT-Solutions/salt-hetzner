git_salt_repo:
  cmd.run:
    - name: salt-run fileserver.clear_cache
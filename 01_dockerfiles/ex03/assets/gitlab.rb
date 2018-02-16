# Docker options
## Prevent Postgres from trying to allocate 25% of total memory
postgresql['shared_buffers'] = '1MB'

# Manage accounts with docker
manage_accounts['enable'] = false

# Get hostname from shell
host = `hostname`.strip
external_url "http://#{host}"

# Load custom config from environment variable: GITLAB_OMNIBUS_CONFIG
# Disabling the cop since rubocop considers using eval to be security risk but
# we don't have an easy way out, atleast yet.
eval ENV["GITLAB_OMNIBUS_CONFIG"].to_s # rubocop:disable Security/Eval

# Load configuration stored in /etc/gitlab/gitlab.rb
from_file("/etc/gitlab/gitlab.rb")

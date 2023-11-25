# SSL Certificate problem: unable to get local issuer

Cause
There are two potential causes that have been identified for this issue.

A Self-signed certificate cannot be verified.
Default GIT crypto backend (Windows clients)
Resolution
Resolution #1 - Self Signed certificate
Workaround

Tell git to not perform the validation of the certificate using the global option:

git config --global http.sslVerify false

# Build Ansible Image

docker build -t ansibleapp .

# Run Ansible App

docker-compose up -d

# Access container

docker-compose exec ansibleapp bash

# Execute playbook

ansible-playbook upgrade-linux.yml -e"hosts=linux_hosts" -k -K -vv

# devops_opengrok_docker
opengrok docker for indexing source code

1. Shareing .ssh volume with local host and container
Login to root and generate ssh key.
$ su root
$ ssh-keygen

2. Prepare source code
Prepare source code in {opengrok_dir}/src/ directory.

3. Run opengrok container
$ docker-compose -d
When the container is created, syncing repository and indexing will be run.

4. Etc
- Reindexing disable
Set SYNC_PERIOD_MINUTES=0 in docker-compose.xml file.
SYNC_PERIOD_MINUTES is timer value for periodical sync and indexing.

- Restart always
Set restart:always in docker-compose.xml.
It restarts container when it is stopped.

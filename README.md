export MACHINE_STORAGE_PATH=/tmp  
docker-machine create default  
eval $(docker-machine env default)  

docker-machine ip default
192.168.99.100

http://guides.rubyonrails.org/getting_started.html

https://github.com/amki/docker-teamspeak-client

/Users/rnugroho/Documents/Codes/42/docker-1/workspace/01_dockerfiles/ex03
https://gitlab.com/gitlab-org/omnibus-gitlab/issues/3133


sudo docker run --rm \
    --hostname gitlab.example.com \
    --env GITLAB_OMNIBUS_CONFIG="external_url 'http://my.domain.com/'; gitlab_rails['lfs_enabled'] = true;" \
    --publish 443:443 --publish 80:80 \
    --name gitlab \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
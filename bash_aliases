alias ls="ls -G"

alias sshkeys='for d in `find ~/.ssh/* -type d`; do ssh-add -t16h `find $d -type f -not -name "*.pub" -exec stat -f "%m {}" {} \; | sort -n | tail -1 | cut -f2- -d" "`; done'
alias genkeys='for key_type in internal external deployed; do
    dt=`date +%Y_%m_%d`
    filenamecore=`whoami`-${key_type}-${dt};
    echo -e "\n***\nGenerating key ${filenamecore}:\n";
    ssh-keygen -t rsa -b 2048 -C "${filenamecore}" -f ~/.ssh/${key_type}/${dt};
    echo -e "\n\nCopying new key to akabox:\n";
    scp ~/.ssh/${key_type}/${dt} akabox:~/.ssh/${key_type}/;
done'

alias rundocker="boot2docker start; export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375"

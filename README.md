Docker

    curl -sSL https://get.docker.com/ | CHANNEL=stable sh
    # After the installation process is finished, you may need to enable the service and make sure it is started (e.g. CentOS 7)
    systemctl enable --now docker


On Debian/Ubuntu systems:

    apt update
    apt install docker-compose-plugin

Install excel-replacer

    $ su
    # umask
    0022 # <- Verify it is 0022
    # cd /opt
    # git clone https://github.com/denny83/excel-replacer
    # cd excel-replacer

Start

    docker compose pull
    docker compose up -d

FROM debian

RUN apt-get update && apt-get install -y python3 git python3-pip wget curl sudo git
RUN wget -O gh https://github.com/cli/cli/releases/download/v2.14.7/gh_2.14.7_linux_amd64.deb
RUN dpkg -i gh
COPY pull.sh /pull.sh
RUN chmod 777 /pull.sh
ENTRYPOINT ["/bin/bash","/pull.sh"]

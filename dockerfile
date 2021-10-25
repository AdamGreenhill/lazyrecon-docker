# The Great Recon - Dockerfile
#

FROM debian
MAINTAINER Adam Greenhill <adam.greenhill@OWASP.org>

RUN apt update && \
        apt install -y wget && \
        mkdir -p /opt/theGreatRecon/ && \
        cd /opt/theGreatRecon/ && \
        https://raw.githubusercontent.com/AdamGreenhill/theGreatRecon/main/theGreatSetup-docker.sh && \
        chmod +x theGreatSetup-docker.sh && \
        bash theGreatSetup-docker.sh && \
        mkdir -p /opt/lazyrecon/ && \
        cd /opt/lazyrecon/ && \
        https://raw.githubusercontent.com/AdamGreenhill/lazyrecon/master/lazyrecon.sh && \
        chmod +x lazyrecon.sh && \
        mkdir -p /opt/entrypoint/ && \
        cd /opt/entrypoint && \
        wget https://raw.githubusercontent.com/AdamGreenhill/theGreatRecon/main/entrypoint.sh && \
        chmod +x entrypoint.sh
ENTRYPOINT ["/opt/entrypoint/entrypoint.sh"]

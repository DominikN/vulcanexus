FROM ros:humble

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y \
        curl \
        apt-utils && \
    curl -sSL https://raw.githubusercontent.com/eProsima/vulcanexus/main/vulcanexus.key -o /usr/share/keyrings/vulcanexus-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/vulcanexus-archive-keyring.gpg] http://repo.vulcanexus.com/debian $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/vulcanexus.list > /dev/null && \
    apt update && apt install -y \
        vulcanexus-humble-desktop

COPY ros_entrypoint.sh /
    


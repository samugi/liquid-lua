FROM ubuntu
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    vim \
    lua5.2 \
    liblua5.2-dev \ 
    luarocks 
RUN luarocks install lua-cjson 2.1.0-1
RUN echo 'alias lua=lua5.2' >> ~/.bashrc
ADD ./lib /home/development/lib
CMD ["/bin/bash"]

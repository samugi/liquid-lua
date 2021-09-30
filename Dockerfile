FROM ubuntu
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    vim \
    luajit \
    luarocks
RUN luarocks install lua-cjson
RUN echo 'alias lua=luajit' >> ~/.bashrc
ADD ./lib /home/development/lib
CMD ["/bin/bash"]

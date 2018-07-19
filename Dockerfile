FROM nginx
RUN apt-get -y update
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:git-core/ppa
RUN apt-get -y install git
RUN rm -rf /usr/share/nginx/html
RUN git clone https://github.com/taro-sakura/hello.git /usr/share/nginx/html
RUN cd /usr/share/nginx/html && \
    git checkout 415a7fe8e2c8132872578ec74afa8405dedf7b36

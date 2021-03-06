FROM phusion/baseimage:0.9.22
MAINTAINER Zhan.Shi <g.shizhan.g@gmail.com>

COPY *.sh ./
RUN apt-get update
RUN . ./install_python.sh
RUN . ./install_jupyter.sh
RUN . ./install_stack.sh
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888
CMD ["/bin/sh", "-c", "/usr/local/bin/jupyter-notebook --no-browser --ip=0.0.0.0 --notebook-dir=/notebooks"]

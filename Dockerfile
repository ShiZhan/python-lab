FROM phusion/baseimage:0.9.19
MAINTAINER Zhan.Shi <g.shizhan.g@gmail.com>

RUN apt-get update && apt-get install -y git
RUN git clone -b 3.5.2 --depth=1 https://github.com/ShiZhan/python-lab.git
RUN cd python-lab && chmod +x *.sh && ./install_python.sh && ./install_jupyter.sh && ./install_stack.sh
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888
CMD ["/bin/sh", "-c", "/usr/local/bin/jupyter-notebook --no-browser --ip=0.0.0.0 --notebook-dir=/notebooks"]

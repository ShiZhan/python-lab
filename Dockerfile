FROM ubuntu:16.04
MAINTAINER Zhan.Shi <g.shizhan.g@gmail.com>

RUN apt-get update && apt-get install -y curl python3.5 python3.5-dev
RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python3.5
RUN pip --no-cache-dir install numpy matplotlib scipy scikit-learn pandas numexpr sympy pyzmq networkx
RUN pip --no-cache-dir install ipykernel jupyter ipython[notebook]
RUN ipython3 kernel install --name python3.5
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY run.sh /home/run.sh
RUN chmod +x /home/run.sh
VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888
CMD ["/home/run.sh"]

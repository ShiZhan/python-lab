FROM daocloud.io/zhan2016/ubuntu-server:master-8044678
MAINTAINER Zhan.Shi <g.shizhan.g@gmail.com>

RUN apt-get install -y curl build-essential python3 python3-dev
RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python3
RUN pip install numpy matplotlib scipy scikit-learn pandas numexpr sympy pyzmq
RUN pip install ipykernel jupyter ipython[notebook]
RUN ipython3 kernel install --name python3

RUN printf '#!/bin/bash \n\
            jupyter notebook --ip=0.0.0.0 > /var/log/notebook.log & \n\
            /usr/sbin/sshd -D \n\
            tail -f /var/null \n\
           ' >> /etc/service.sh && chmod +x /etc/service.sh

EXPOSE 22 8888
CMD ["/etc/service.sh"]

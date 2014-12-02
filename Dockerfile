FROM centos
RUN yum install -y tar
RUN curl -L https://github.com/coreos/rocket/releases/download/v0.1.0/rocket-v0.1.0.tar.gz | tar xz
RUN ln -s /rocket-v0.1.0 /rocket
WORKDIR /rocket
ENTRYPOINT ["./rkt"]

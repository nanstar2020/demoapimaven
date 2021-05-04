From registry.redhat.io/openshift4/ose-logging-fluentd:v4.6

RUN \
      INSTALL_PKGS="gcc-c++  make redhat-rpm-config" \
 &&   REMOVE_PKGS="cpp gcc glibc-devel glibc-headers libgomp libmpc libstdc++-devel kernel-headers mpfr" \
 &&   yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS \
 &&   rpm -V $INSTALL_PKGS \
 &&   gem install fluent-plugin-cloudwatch-logs --verbose 

WORKDIR ${HOME}
CMD ["fluentd"]

LABEL io.k8s.display-name=Fluentd-CloudWatch

LABEL io.k8s.description="Fluentd custom container for forwarding to AWS CloudWatch"

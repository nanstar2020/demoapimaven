From registry.redhat.io/openshift4/ose-logging-fluentd:v4.5.0-202010161522.p0

RUN \
      INSTALL_PKGS="rh-ruby25-ruby-devel  rh-ruby25-rubygems-devel  gcc-c++  make" \
 &&   REMOVE_PKGS="cpp gcc glibc-devel glibc-headers libgomp libmpc libstdc++-devel kernel-headers mpfr" \
 &&   yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS \
 &&   rpm -V $INSTALL_PKGS \
 &&   scl enable rh-ruby25 "/opt/rh/rh-ruby25/root/usr/bin/gem install fluent-plugin-cloudwatch-logs --verbose" \
 &&   yum remove -y  --setopt=tsflags=nodocs $INSTALL_PKGS $REMOVE_PKGS \
 &&   yum clean all

WORKDIR ${HOME}
#CMD ["scl", "enable", "rh-ruby25", "--", "sh", "run.sh"]
CMD ["tail", "-f", "/var/log/yum.log" ]

LABEL io.k8s.display-name=Fluentd-CloudWatch

LABEL io.k8s.description="Fluentd custom container for forwarding to AWS CloudWatch"

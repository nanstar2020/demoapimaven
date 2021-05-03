From registry.redhat.io/openshift-logging/fluentd-rhel8


RUN yum install -y gcc-c++
RUN yum install -y make
RUN yum install -y redhat-rpm-config
RUN gem install fluent-plugin-cloudwatch-logs
RUN gem install ca-certicates

CMD ["fluentd"]



LABEL io.k8s.display-name=Fluentd-CloudWatch

LABEL io.k8s.description="Fluentd custom container for forwarding to AWS CloudWatch"

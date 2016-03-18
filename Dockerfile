FROM python:2.7.11
MAINTAINER Masashi Kurita <marty.marron@gmail.com>

USER root
RUN apt-get update

RUN curl -kL https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
RUN pip install argparse ordereddict PyYAML python-jenkins
RUN pip install git+https://git.openstack.org/openstack-infra/jenkins-job-builder

CMD ["jenkins-jobs", "--version"]
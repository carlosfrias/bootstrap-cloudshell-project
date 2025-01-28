
FROM gcr.io/cloudshell-images/cloudshell:latest as basic_bootstrap
RUN apt-get update  \
    && apt-get -y install apt-utils  \
    && apt-get -y install lsof  \
    && apt-get update  \
    && apt-get install -y software-properties-common  \
    && sudo apt-get install -y curl git mc vim facter aptitude apt-transport-https ca-certificates gnupg

VOLUME /bootstrap-runtime
WORKDIR /bootstrap-runtime
COPY molecule /bootstrap-runtime/molecule/
COPY resources /bootstrap-runtime/resources/
COPY docker-helper/python-requirements.txt /bootstrap-runtime/python-requirements.txt
RUN pip install -r python-requirements.txt
RUN mkdir -p /bootstrap-runtime/work_dir \
    && chmod -R +w /bootstrap-runtime/work_dir
ENTRYPOINT bash

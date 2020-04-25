FROM registry.fedoraproject.org/fedora-minimal

RUN microdnf update --assumeyes \
 && microdnf install --nodocs \
      google-roboto-fonts \
      google-roboto-mono-fonts \
      pandoc \
      pandoc-pdf \
      texlive-lm-math \
      texlive-polyglossia \
      texlive-preprint \
 && microdnf clean all

WORKDIR /data

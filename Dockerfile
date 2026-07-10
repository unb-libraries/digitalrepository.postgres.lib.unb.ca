FROM postgres:15-alpine

ENV TZ="America/Moncton"
COPY build/conf/postgresql.conf /etc/postgresql/postgresql.conf
COPY build/scripts /scripts

ENTRYPOINT ["/scripts/run.sh"]

# Metadata
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL ca.unb.lib.generator="postgres" \
  com.microscaling.docker.dockerfile="/Dockerfile" \
  com.microscaling.license="MIT" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.description="digitalrepository.postgres.lib.unb.ca provides database storage for The digitalrepository instance at UNB Libraries." \
  org.label-schema.name="digitalrepository.postgres.lib.unb.ca" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/unb-libraries/digitalrepository.postgres.lib.unb.ca" \
  org.label-schema.vendor="University of New Brunswick Libraries" \
  org.label-schema.version=$VERSION \
  org.opencontainers.image.source="https://github.com/unb-libraries/digitalrepository.postgres.lib.unb.ca"
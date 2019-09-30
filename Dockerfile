FROM vibranthq/opinionated-review:1.0 as runtime

LABEL "repository"="https://github.com/vibranthq/build-review"
LABEL "maintainer"="Yasuaki Uechi"

ENV CI true

FROM runtime
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM vibranthq/opinionated-review as runtime

LABEL "com.github.actions.name"="Build Re:VIEW files"
LABEL "com.github.actions.description"="Build Re:VIEW files and create the artifact with respective format"
LABEL "com.github.actions.icon"="anchor"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/vibranthq/build-review"
LABEL "maintainer"="Yasuaki Uechi"
ENV CI true

FROM runtime
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

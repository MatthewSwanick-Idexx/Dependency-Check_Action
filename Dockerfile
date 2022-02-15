FROM owasp/dependency-check-action:latest

LABEL repository="https://github.com/MatthewSwanick-Idexx/DependencyCheck_Builder" \
      homepage="https://github.com/MatthewSwanick-Idexx/DependencyCheck_Builder" \
      maintainer="MatthewSwanick-Idexx" \
      com.github.actions.name="Dependency Check" \
      com.github.actions.description="Github action to execute dependency check as part of a github workflow" \
      com.github.actions.icon="shield" \
      com.github.actions.color="red"

USER root 

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]

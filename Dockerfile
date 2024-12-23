##############
# Base Image #
##############

FROM rtvu/ubuntu:24.04

#########################
# Environment Variables #
#########################

ENV NODE_VERSION=22.12.0

###################
# Install Node.js #
###################

RUN \
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash && \
  /bin/bash -c 'source ${HOME}/.nvm/nvm.sh && nvm install ${NODE_VERSION}' && \
  /bin/bash -c 'source ${HOME}/.nvm/nvm.sh && nvm alias default ${NODE_VERSION}' && \
  /bin/bash -c 'source ${HOME}/.nvm/nvm.sh && nvm use default' && \
  /bin/bash -c 'source ${HOME}/.nvm/nvm.sh && corepack enable'

###########
# Startup #
###########

CMD ["/bin/bash"]

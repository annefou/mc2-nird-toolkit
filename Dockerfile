FROM quay.io/uninett/jupyterhub-singleuser:20191012-5691f5c

MAINTAINER Anne Fouilloux <annefou@geo.uio.no>

# Install packages
USER root
RUN apt-get update && apt-get install -y vim

# fix permission problems (hub is then failing)
RUN fix-permissions $HOME

# Install other packages
USER notebook

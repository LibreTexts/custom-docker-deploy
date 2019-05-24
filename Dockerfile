FROM jupyter/minimal-notebook:abdb27a6dfbb

# Make sure the contents of our repo are in ${HOME}
USER root
COPY . ${HOME}
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

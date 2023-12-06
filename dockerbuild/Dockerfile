FROM nvcr.io/nvidia/pytorch:22.04-py3

RUN apt update && apt upgrade -y \
    && apt install && DEBIAN_FRONTEND="noninteractive" apt install -y --no-install-recommends \
    sudo \
    tmux \
    tree \
    xclip

ENV USER_NAME=developer

RUN echo "${USER_NAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/${USER_NAME}

RUN chmod u+s /usr/sbin/useradd \
    && chmod u+s /usr/sbin/groupadd

COPY dockerbuild/entrypoint.sh /
COPY dockerbuild/requirements.txt /
RUN pip install -r /requirements.txt

WORKDIR /workspace


ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]


# FROM python:3

# RUN apt update && apt upgrade -y \
#     && apt install && apt install -y --no-install-recommends \
#     sudo \
#     tmux \
#     tree

# ENV USER_NAME=developer

# RUN echo "${USER_NAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/${USER_NAME}
# RUN chmod u+s /usr/sbin/useradd \
#     && chmod u+s /usr/sbin/groupadd

# COPY dockerbuild/entrypoint.sh /
# COPY dockerbuild/requirements.txt /
# RUN pip install -r /requirements.txt

# WORKDIR /workspace

# ENTRYPOINT ["/entrypoint.sh"]
# CMD ["bash"]


# FROM nvcr.io/nvidia/pytorch:22.04-py3

# RUN apt update && apt upgrade -y \
#     && apt install && DEBIAN_FRONTEND="noninteractive" apt install -y --no-install-recommends \
#     sudo \
#     tmux \
#     tree \
#     xvfb \
#     imagemagick

# ENV USER_NAME=developer

# RUN echo "${USER_NAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/${USER_NAME}

# RUN chmod u+s /usr/sbin/useradd \
#     && chmod u+s /usr/sbin/groupadd

# COPY dockerbuild/entrypoint.sh /
# COPY dockerbuild/requirements.txt /
# RUN pip install -r /requirements.txt

# WORKDIR /workspace

# ENTRYPOINT ["/entrypoint.sh"]
# CMD ["bash"]

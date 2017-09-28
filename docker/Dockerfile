FROM nvidia/cuda

COPY install_packages.sh /home/install_packages.sh

RUN ./home/install_packages.sh

RUN apt install -y \
		git

# https://docs.google.com/document/d/1rAE80DInoJ3owlkDAGg0c8qXIWfm4Q0DeX7h7MpRjAQ/edit#
RUN git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it && \
	~/.bash_it/install.sh --silent

# https://medium.com/@mccode/understanding-how-uid-and-gid-work-in-docker-containers-c37a01d01cf
# https://debian-facile.org/doc:systeme:groupadd
# RUN groupadd devgl && \
# 	useradd -r -u 1001 -g devgl devgl

# USER devgl

WORKDIR /home/project

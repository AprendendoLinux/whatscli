FROM node
ENV GIT_SSL_NO_VERIFY 1
ENV MUDSLIDE_CACHE_FOLDER /home/node/whatsapp
RUN apt update && \
	apt dist-upgrade -y && \
	apt clean  && \
	apt clean all && \
	rm -rf /var/cache/apt/archives/* && \
	rm -r /var/lib/apt/lists/* && \
	npm install n -g && \
	n latest && \
	npm install --force -g mudslide
VOLUME ["/home/node/whatsapp"]

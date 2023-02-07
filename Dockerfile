FROM node
ENV GIT_SSL_NO_VERIFY 1
ENV MUDSLIDE_CACHE_FOLDER /home/node/whatsapp
RUN npm install --force -g mudslide
VOLUME ["/home/node/whatsapp"]

FROM us.gcr.io/trim-1349/docker-phantomjs
COPY assets/ /phearjs/assets/
COPY config/ /phearjs/config/
COPY gulpfile.js /phearjs/
COPY lib/ /phearjs/lib/
COPY package.json /phearjs/
COPY phear.js /phearjs/
COPY src/ /phearjs/src/
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
  && apt-get install -y --no-install-recommends nodejs build-essential \
  && cd /phearjs \
  && npm install \
  && apt-get -y remove build-essential \
  && apt-get clean \
  && apt-get autoclean \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/local/rvm/archives/*
WORKDIR /phearjs
CMD ["node", "/phearjs/phear.js"]

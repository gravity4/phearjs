FROM us.gcr.io/trim-1349/baseimage:0.9.18_16.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        bzip2 \
        libfontconfig \
        curl \
	python-pip \
    && apt-get clean \
    && rm -rf /tmp/ /var/lib/apt/lists/ \
    && pip install -U setuptools wheel \
    && pip install supervisor supervisor-stdout

RUN mkdir /tmp/phantomjs \
    && curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
           | tar -xj --strip-components=1 -C /tmp/phantomjs \
    && cd /tmp/phantomjs \
    && mv bin/phantomjs /usr/local/bin \
    && cd \
    && rm -rf /tmp/* /var/lib/apt/lists/*
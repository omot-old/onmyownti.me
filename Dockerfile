FROM ubuntu:18.04

RUN apt-get -yqq update
RUN apt-get -yqq install hugo curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -yqq nodejs build-essential

add . /wkdir/
WORKDIR /wkdir/

RUN npm install

EXPOSE 1313

CMD ["hugo","server"]
FROM ghcr.io/marketsquare/robotframework-browser/rfbrowser-stable:18.6.3


WORKDIR /usr/src/app

COPY . /usr/src/app

CMD ["robot", "-d reports","-V config/dev.py", "tests/"]

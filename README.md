## Only Python 3.8 or newer is supported. From Node side 18 and 20 LTS versions are supported.

- ### Install node.js e.g. from https://nodejs.org/en/download/
- ### Update pip pip install -U pip to ensure latest version is used
- ### Install robotframework-browser from the commandline: pip install robotframework-browser
- ### Install the node dependencies: run rfbrowser init in your shell
- ### rfbrowser init firefox chromium

## Kurulum
```bash
pip install -r requirements.txt
```

## Playwright Kurulumu
- Playwright'i yüklemek için aşağıdaki komutu çalıştırın:
```bash
rfbrowser init
```

## Kullanım
```bash
robot -d reports -V config/dev.py tests/
```

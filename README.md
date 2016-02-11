# Front-end Tools

> This docker image provides some executables for common front-end tools.

## What's included?

- node
    - npm
    - gulp
    - grunt-cli
    - bower
    - browserify
    - mocha

## How to use

With root user

`docker run -it --name frontend -v $(pwd)/:/home/frontend/ nicolaspio/frontend-tools`

Non root

`docker run -it --name frontend -u frontend -v $(pwd)/:/home/frontend/ nicolaspio/frontend-tools`

## Alias for produtivity

```
$ wget -O /usr/local/bin/fet https://raw.githubusercontent.com/NicolasPio/frontend-tools/master/fet.sh
# chmod +x /usrlocal/bin/fet
```

__Usage example__

`$ fet gulp watch`

`$ fet bower install`

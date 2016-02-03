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
$ wget https://github.com/NicolasPio/frontend-tools.git
$ cd frontend-tools
$ chmod +x fet.sh
# cp fet.sh /usr/local/bin/fet
```

__Usage example__

`$ fet gulp watch`

`$ fet bower install`

# Frontend Tools

This docker image provides some executables for common frontend-build-chains,
that are needed in most current projects. Ever had a hassle installing
node and the correct version of sass to compile a specific projects CSS
and JS Files? That's what this is all about.

## What's included?

After building, the following executables will be available through the docker-image:

  - ruby
    - sass
    - compass
    - scss-lint
  - node
    - gulp
    - grunt-cli
    - bower
    - browserify
    - less

## Installing

Clone this repository, change to the directory and build your docker-image:

```
git clone git@github.com:webgefrickel/docker-frontend-tools.git
cd docker-frontend-tools
docker build -t docker-frontend-tools .
```

This will take a while, depending on your system and internet connection.
After it is done, you have will have a tagged docker-image with everything
you need to get started!

## Usage

Root

`docker run -it --name frontend -v $(pwd)/:/home/frontend/ frontend-tools`

Non root

`docker run -it --name frontend -u frontend -v $(pwd)/:/home/frontend/ frontend-tools`

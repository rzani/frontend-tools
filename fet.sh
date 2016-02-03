#!/bin/bash

docker run -it --rm --name frontend -u frontend -v $(pwd)/:/home/frontend/ nicolaspio/frontend-tools $@

#!/bin/bash

docker build -t hello-php .
docker run -p 3000:80 -v $(pwd)/src/:/var/www/html/ hello-php
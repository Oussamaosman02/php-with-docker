# Run PHP and Apache with DOCKER

> **First you need to have docker installed**

## Build it

```bash
docker build -t hello-php .
```

## Run it in the browser

```bash
docker run -p 3000:80 -d hello-php
```

## Run it in real time

#### Linux

```bash
docker run -p 3000:80 -v $(pwd)/src/:/var/www/html/ hello-php
```

#### Windows

First, make a `cd` and copy the result to the clipboard

Once that, run this command replacing C: with the cd output

```powershell
docker run -p 3000:80 -v C:\src\:/var/www/html/ hello-php
```

### Connect to the container

```bash
docker exec -it bash
```

### For build your project

```bash
docker build -t hello-php .
docker run -d -p 80:80 hello-php
```

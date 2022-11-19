@echo off
FOR /F "tokens=* USEBACKQ" %%F IN (`cd`) DO (
SET rut=%%F
)

docker build -t hello-php .
docker run -p 3000:80 -v %rut%\src\:/var/www/html/ hello-php
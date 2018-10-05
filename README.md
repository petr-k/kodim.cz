# Kódím.cz

Portál pro výuku programování na [www.kodim.cz](http://www.kodim.cz).

## Jak web rozběhat na lokále

1. Nainstalovat [docker][1] a [docker-compose][2].
1. Spustit 
    ```docker-compose up```.
1. Otevřít adresu http://localhost:8080
1. Změny Mako šablon i Python kódu v [web/src](web/src) fungují bez restartu kontejneru, je ovšem třeba obnovit stránku v prohlížeči.
1. Po skončení práce: `Ctrl+C` ukončí spuštěné kontejnery a `docker-compose down -v` provede jejich úklid.


[1]: https://docs.docker.com/install/
[2]: https://docs.docker.com/compose/install/
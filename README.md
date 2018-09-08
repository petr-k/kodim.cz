# Kódím.cz

Portál pro výuku programování na [www.kodim.cz](http://www.kodim.cz).

## Jak web rozběhat na lokále

1. Nainstalovat Node.js 
1. Nainstalovat brunch
    ```npm install -g brunch```
1. Ve složce `web` spustit
    ```brunch build```
1. Nainstalovat docker
1. Přesunout se do složky `docker` a v ní sestavit docker image
    ```docker build -t kodim_image .```
1. Přesunout se do složky `web` a v ní spustit docker kontejner
   ```docker run --name kodim.cz -p 8080:80 -v <absolute path to public folder>:/app kodim_image```
1. Otevřít adresu http://localhost:8080

## Úpravy webu

Pokud chci buildovat automaticky je třeba spustit 

```brunch w```

Změny Mako šablon fungují bez restartu kontejneru. Pro nahrání změn v Python kódu je třeba restartovat kontejner

```docker restart kodim.cz```
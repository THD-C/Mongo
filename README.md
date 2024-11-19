# mongo
1. Template stron z translacjami (strona główna, rodo, strona z wykresem krypto (niezależne od waluty), do długich tekstów)
    - id strony
    - język
    - tytuł z headera
    - treść

## Data import mechanism
After mongoDB container startup all data specified in `/data` directory in `.json` files will be imported to mongoDB.

Each `.json` file defines singular collection. Collection name will be the same as the `.json` file name.

### Add custom data to DB
You need to add or modify existing file inside the `/data` directory and rebuild the docker image, that's it.

![image](/Picture/Example.png)
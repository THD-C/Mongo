# mongo
1. Template of pages with translations (home page, GDPR, page with crypto chart (independent of currency), for long texts)
    - page id
    - language
    - header title
    - content
2. Secret Store

## Setup
1. Create GitHub token to fetch App secrets

    `echo "$(gh auth token)" > .github_token`

## Data import mechanism
After mongoDB container startup all data specified in `/data` directory in `.json` files will be imported to mongoDB.

Each `.json` file defines singular collection. Collection name will be the same as the `.json` file name.

### Add custom data to DB
You need to add or modify existing file inside the `/data` directory and rebuild the docker image, that's it.

![image](/Picture/Example.png)
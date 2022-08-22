## food_recipe backend

This is the backend part of the project maseriya which is an online tender providing service for any scale of companies that can automate the process and give users a more relaxed and safer environment they can use to do their works from any place of their convince 

## `backend`

The `backend` directory contains the basic skeleton of an express.js API for implementing custom event and action handlers. 
You can start the backend as follows:

```text
cd backend
npm install
npm start
```


## `docker-compose.yaml`

`docker-compose.yaml` is a Docker Compose file describing the Hasura service and a Postgres database.  You must [install Docker](https://docs.docker.com/get-docker/) to run it.  If you are on Linux or WSL you will also need to [install Docker Compose](https://docs.docker.com/compose/install/) separately. 
You can start the service as follows:

```
docker-compose up
```
Newer
```
docker compose up

```


## `hasura`

hasura is the backend graphql server implemented here

install hasura cli 
```
npm install --save-dev hasura-cli
```
then use this code to import the database and backend for hasura after you get in the hasura folder
```
npx hasura metadata apply 
npx hasura migrate apply --all-databases 
npx hasura metadata reload 

```
after that use this code to apply the seeds for the hasura instance in the enum table tender_status
```
hasura seed apply

# apply seeds for only one seed 

npx hasura seed apply --file 1658982347894_status_seed.sql
```

## hasura cloud to local import 

## `step 1 migrate init`
```
npx hasura migrate create init --from-server --endpoint https://current-cow-32.hasura.app --admin-secret qgzThy8KIbdjt88NCcsm8660gbRqUVLPwOIeIg553NkSIyLZ6DON51mR7HkiLbTO --database-name default
```

## `step 2 migrate apply`
```
npx hasura migrate apply --endpoint https://current-cow-32.hasura.app --admin-secret qgzThy8KIbdjt88NCcsm8660gbRqUVLPwOIeIg553NkSIyLZ6DON51mR7HkiLbTO --skip-execution
```

## `step 3 migrate export`
```
npx hasura metadata export --endpoint https://current-cow-32.hasura.app --admin-secret qgzThy8KIbdjt88NCcsm8660gbRqUVLPwOIeIg553NkSIyLZ6DON51mR7HkiLbTO
```



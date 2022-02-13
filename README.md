# TodoEx  (WIP)

Todo API conaining basic CRUD operations


# setup

To run this project you need first to have a Postgres container running on port 5432. We embed a docker-compose configuration to ease setting up the environment.  

```sh
# Run this to have a database on 5432
    docker-compose up -d

```

Start the project: 

```sh
# On the root folder:
    mix setup
```

Start the server: 

```sh
# On the root folder:
    iex -S mix phx.server
```
---
## API

All APIs requests are under `/api` scope.


## Create todo

### Request
`POST /todos/create`

```json
// Example
{
	"description": "Limpar casa"

}
```

# TodoEx  (WIP)

Todo API containing basic CRUD operations


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

### Request
`GET /todos/list`
```json
// Response

{
  "todos": [
    {
      "done?": false,
      "id": "0e865644-30ba-42f7-b061-2ee437baf486",
      "todo": "estudar"
    },
    {
      "done?": false,
      "id": "1e170da5-7baa-428a-82a7-3f90d9050bb0",
      "todo": "limpar casa"
    },
    {
      "done?": false,
      "id": "5bd21990-8d66-4440-be06-07cf1eec3f03",
      "todo": "limpar banheiro"
    }
  ]
}
```
***rails-api-sandbox***

## About

Ruby on Rails + MySQL + Docker での REST API 開発（View なし）の素振り

## Dependencies

* Ruby `2.7`
* Ruby on Rails `6.0`
* MySQL `5.7`
* Docker / Docker Compose
* Open API `3.0`

## Getting Started

* Build

```bash
$ docker-compose build
```

* Start services - DB, Application

```bash
$ docker-compose up -d
```

* Start application

```bash
$ ./server.sh
```

*>> Listen on http://localhost:8080*

* Show API spec

```bash
$ ./redoc.sh
```

*>> Can see at http://localhost:8080/redoc.html*

* Stop services

```bash
$ docker-compose down
```

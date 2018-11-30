# Docker container backend and frontend

Docker container with a self signed ssl certificate.

## Structure

```bash
.
└── project
    ├── backend
    ├── docker
    └── frontend
```

## Installation

### Ssl certificate

```bash
$ cd docker/ssl
$ cp openssl.cnf.example openssl.cnf
$ ./gen-cert.sh
```

### Docker

```bash
$ cd docker
$ cp .env.example .env

$ docker-compose up -d --build
```

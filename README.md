# eventnus

## Setup

First run the Postgres database. If you are using Homebrew:
```
$ postgres -D /usr/local/var/postgres
```

Setup the project and init the database:
```
$ bin/setup
```

Stop the first Postgres and start the app using Foreman:
```
$ foreman start -f Procfile.dev
```

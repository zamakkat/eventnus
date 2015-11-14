# eventnus

[![Code Climate](https://codeclimate.com/github/zamakkat/eventnus/badges/gpa.svg)](https://codeclimate.com/github/zamakkat/eventnus)
[![Test Coverage](https://codeclimate.com/github/zamakkat/eventnus/badges/coverage.svg)](https://codeclimate.com/github/zamakkat/eventnus/coverage)

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

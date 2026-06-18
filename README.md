# Ruby Service

A minimal Sinatra HTTP service used to exercise the shared composite GitHub Action in this organization.

## Endpoints

| Method | Path      | Response                 |
|--------|-----------|---------------------------|
| GET    | `/`       | `Hello, World!`          |
| GET    | `/health` | `{ "status": "ok" }`    |

## Running locally

```bash
bundle install
bundle exec rackup config.ru          # serves on :9292 by default
bundle exec rackup config.ru -p 8080  # custom port
```

## Tests & linting

```bash
bundle exec rspec        # 3 tests
bundle exec rubocop      # lint
```

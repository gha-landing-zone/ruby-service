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

## GitHub Actions

The workflow at `.github/workflows/ci.yml` calls your organization's shared composite action.
Update the `uses:` line with your action's path and ref:

```yaml
- uses: my-org/actions/.github/actions/<your-action-name>@main
  with:
    ruby-version: "3.3"   # if your action takes this input
```

## Note on Gemfile.lock

This template doesn't ship a `Gemfile.lock` — run `bundle install` locally to generate one for your platform. If your CI workflow expects a committed lockfile, generate it and remove the `Gemfile.lock` exclusion (there isn't one by default, just don't `.gitignore` it).

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Deploy

```bash
make deploy
# equivalent to: cd devlonduthie-com; echo "y" | gcloud app deploy
```

This deploys to Google App Engine. Requires `gcloud` CLI to be authenticated.

## Architecture

This is a static personal website hosted on **Google App Engine** (Python 3.12 runtime used purely as a static file host — no server-side code).

- `devlonduthie-com/app.yaml` — GAE configuration; maps URL routes directly to static files under `www/`
- `devlonduthie-com/www/` — all web content served publicly
  - `index.html` — main page (Bootstrap 5.3 dark-theme layout with Bootstrap Icons)
  - `css/style.css` — custom styles
  - `images/devlon.png` — profile photo
- `favicon_io/` — favicon source assets (not deployed; favicons are copied into `devlonduthie-com/`)

The site uses Bootstrap 5.3 and Bootstrap Icons loaded from CDN. The color scheme is dark (`#212529` background, `linen` text). New static pages added to `www/` are automatically served by the catch-all route in `app.yaml` — no route registration needed.

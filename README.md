# Yibo Wei's website

A Zola website with a standalone Typst CV package.

## Build roots

This repository is a [mise](https://mise.jdx.dev/) monorepo. The root `mise.toml` declares `cv/` as an explicit configuration root, so the CV retains its own tools and tasks while participating in a unified build graph.

- Root website tasks: `site`, `serve`, and `cv`
- CV workspace tasks: `//cv:build`, `//cv:watch`, and `//cv:clean`

Install the union of all workspace tools once:

```sh
mise install --monorepo
```

## Local development

```sh
mise run serve
```

Open the local URL printed by Zola. The site entry point redirects to `/about/`.

## CV

The editable source is [`cv/yibo-wei.typ`](cv/yibo-wei.typ). Build the CV package directly with:

```sh
mise run //cv:build
```

This produces `cv/build/yibo-wei-cv.pdf`. The root `cv` task copies that artifact to `static/yibo-wei-cv.pdf`, where Zola serves it at `/yibo-wei-cv.pdf`:

```sh
mise run cv
```

To rebuild the standalone CV while editing:

```sh
mise run //cv:watch
```

Build the complete production site, including the CV:

```sh
mise run site
```

## Cloudflare Pages deployment

The site is configured for `https://yibo-wei.com`. The Cloudflare Pages build script is [`scripts/cloudflare-build.sh`](scripts/cloudflare-build.sh); it installs mise, provisions Zola and Typst, builds the standalone CV, and then builds the site.

1. In Cloudflare, go to **Workers & Pages** → **Create application** → **Pages** → **Connect to Git**. Select [`Microwave-WYB/personal-website`](https://github.com/Microwave-WYB/personal-website) and set:
   - Production branch: `main`
   - Build command: `bash scripts/cloudflare-build.sh`
   - Build output directory: `public`
   - Root directory: leave blank

2. After the first deployment, open the Pages project's **Custom domains** tab and add `yibo-wei.com`. The domain must be an active zone in the same Cloudflare account. Cloudflare will provide or automatically create the required DNS record and TLS certificate.

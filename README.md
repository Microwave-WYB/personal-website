# Yibo Wei's website

A Zola website with a standalone Typst CV package.

## Build roots

This repository uses [mise](https://mise.jdx.dev/) as its unified task interface:

- The repository root builds the Zola site.
- [`cv/`](cv/) is an independent Typst build root. Its `mise.toml` owns the Typst version and CV build tasks.

Install the tools for both roots once:

```sh
mise install
mise -C cv install
```

## Local development

```sh
mise run serve
```

Open the local URL printed by Zola. The site entry point redirects to `/about/`.

## CV

The editable source is [`cv/yibo-wei.typ`](cv/yibo-wei.typ). Build the CV package directly with:

```sh
mise -C cv run build
```

This produces `cv/build/yibo-wei-cv.pdf`. The root `cv` task copies that artifact to `static/yibo-wei-cv.pdf`, where Zola serves it at `/yibo-wei-cv.pdf`:

```sh
mise run cv
```

To rebuild the standalone CV while editing:

```sh
mise -C cv run watch
```

Build the complete production site, including the CV:

```sh
mise run site
```

## Cloudflare Pages deployment

The site is configured for `https://yibo-wei.com`. The Cloudflare Pages build script is [`scripts/cloudflare-build.sh`](scripts/cloudflare-build.sh); it installs mise, provisions Zola and Typst, builds the standalone CV, and then builds the site.

1. Create an empty GitHub repository, for example `personal-website`, without adding a README or `.gitignore`.
2. Push this local repository:

   ```sh
   git add .
   git commit -m "Initial website"
   git remote add origin https://github.com/YOUR-GITHUB-USERNAME/personal-website.git
   git push -u origin main
   ```

3. In Cloudflare, go to **Workers & Pages** → **Create application** → **Pages** → **Connect to Git**. Select the repository and set:
   - Production branch: `main`
   - Build command: `bash scripts/cloudflare-build.sh`
   - Build output directory: `public`
   - Root directory: leave blank

4. After the first deployment, open the Pages project's **Custom domains** tab and add `yibo-wei.com`. The domain must be an active zone in the same Cloudflare account. Cloudflare will provide or automatically create the required DNS record and TLS certificate.

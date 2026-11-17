# Clear Mind Therapy Center — Website (v2.0)

## Files
- `index.html` — the whole site (CSS and JS included)
- `favicon.svg`, `favicon.ico`, `apple-touch-icon.png`, `og-image.jpg` — icons and share preview
- `robots.txt`, `sitemap.xml` — for search engines
- `set-url.sh` — sets your real site address everywhere in one step
- `CHANGELOG.md` — what changed

## Setting the site address
The files contain the placeholder `SITE_URL_PLACEHOLDER`. Once you know the live address, run:

    ./set-url.sh https://USERNAME.github.io/REPO-NAME/

Later, when you buy a domain, run it again with the new domain. (Run it on the original files; if you've already replaced the URL, search and replace the old one instead.)
On Windows, just use find and replace on `SITE_URL_PLACEHOLDER` in the three files.

## Contact details
Phone and email live in a few places in `index.html` (buttons, links, footer, structured data). The JS constants `THERAPIST_PHONE` and `THERAPIST_EMAIL` control the form. If either changes, search for the old value and replace all.

## Optional: add her photo
Put a square photo at `assets/mehwish.jpg`. It replaces the spiral automatically.

## Before going live
1. Run `set-url.sh` (above).
2. Have a native Urdu speaker review the Urdu text (search `const UR` in `index.html`).
3. Confirm the 24-hour reply promise and the helpline numbers.
4. Decide on a fee line (currently "shared when Mehwish contacts you").

## Deploying on GitHub Pages
Upload the folder contents to the repo, then Settings → Pages → deploy from the main branch.

## Google
After going live, add the site to Google Search Console and submit `sitemap.xml`. A Google Business Profile helps local searches.

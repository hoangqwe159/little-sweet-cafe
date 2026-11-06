# CLAUDE.md — Little Sweet Cafe

This repo holds the written knowledge for **Little Sweet Cafe**: staff training docs, standard operating procedures (SOPs), equipment maintenance guides, and SEO blog posts for the website. It is a content repo, not a code repo. The live website is built and hosted on **Square Online**, not from this repo.

## The business

| | |
|---|---|
| Trading name | Little Sweet Cafe (Square location name: "Little Sweet Cafe & Bubble Waffle") |
| Address | Shop 10/2 Elkhorn Ave, Surfers Paradise QLD 4217 (Gold Coast, Australia) |
| Phone | +61 420 995 185 |
| Hours | 11:30 am – 10:30 pm, 7 days (from Square location settings) |
| Service | Dine-in and takeaway/pickup. Online ordering through Square Online (`/s/order`). No delivery through Square; delivery is through **Uber Eats** (some items are packed differently for Uber, e.g. soufflé pancakes: 2 pieces, no ice cream). |
| Website | https://littlesweetcafe.com.au (Square Online, merchant `MLGYXZYEKKJH1`) |
| Social | Instagram and Facebook: `@littlesweetcafegc` |
| Brand colour | Pink `#e96389` |

**What it is:** a late-night dessert cafe in the Surfers Paradise tourist strip. The main products are Japanese-style soufflé pancakes, Hong Kong-style bubble (egg) waffles, Korean bingsu, and bubble tea. Customers are mostly tourists, young locals, students, and families out at night.

**Brand voice (from the site):** warm, playful, a little indulgent. Examples: "Your Dessert Destination in Gold Coast", "Your Daily Dose of Happiness", "Open late – your local sweet escape", "Crafted to order with premium ingredients". Use "soufflé pancakes" (with the accent) in customer copy. Write in Australian English (colour, flavour, favourite).

### Menu (from the Square catalog, Nov 2026; prices in AUD)

Square is the source of truth for prices, so check it before quoting a price in any document. The figures below are for reference only.

- **Soufflé pancakes** ($21.90): Strawberry, Oreo, Matcha, Brown Sugar with Pearls, Biscoff. (Pork Floss Soufflé Pancake is discontinued but still listed online.)
- **Bubble waffles** ($10.80–$18.30): Original, Chocolate, Banana, Oreo, Strawberry, Caramel Banana, Matcha Red Bean, Super Oreo, White Strawberry, Dark Strawberry, Rainbow, Devil.
- **Bingsu** ($18.30): Original, Strawberry, Brownie, Oreo, Matcha.
- **Cutie Puff** ($9.90) and **Egg Yaki** ($14.90).
- **Milk tea** ($7.80–$10.80): Classic, Brown Sugar, Taro, Matcha, Matcha Red Bean, Chocolate, Oreo Cream Cheese, Super Oreo, Little Sweet Coffee.
- **Iced tea** ($8.00): Grape, Passionfruit, Lychee, Peach, Grapefruit, Mango.
- **Frappe** ($9.80): Mango, Matcha, Grape, Strawberry, Oreo. (Berrynana is discontinued but still listed online.)
- **Yoghurt drinks:** discontinued, but all 7 are still listed online.
- **Milkshakes** ($10.50): Vanilla, Mango, Caramel, Strawberry, Chocolate.
- **Add-ons and other:** ice cream $3.50 per scoop (owner, Nov 2026; Square shows $2–$3), waffle extras, takeaway container $0.80, box $0.50, extra cup $0.50, water $4.20, Matcha Strawberry $9, Unicorn plush toy $20.

## Repo layout

```
training/        Onboarding and role training (barista/drinks, waffle station, soufflé station, front counter/POS)
procedures/      SOPs: opening, closing, cleaning, food safety, cash/POS, incidents, allergen handling
maintenance/     Equipment care: waffle irons, soufflé griddle, tea brewers, sealer, blenders, fridges/freezers, ice machine, shaved-ice machine; plus website upkeep
recipes/         Build cards for each menu item (portions, toppings, assembly order, photo of the finished item)
blog/            SEO blog posts (drafts and published), one Markdown file per post
assets/          Images and diagrams used by the docs
site/            Docs-site-only files: homepage (index.md) and brand CSS
scripts/         build-docs.sh builds the docs site
```

### Staff docs site (docs.littlesweetcafe.com.au)

The `training/`, `procedures/`, `maintenance/`, `recipes/` and `assets/` folders are published as a **public** MkDocs (Material) site on GitHub Pages at https://docs.littlesweetcafe.com.au. Every push to `main` triggers `.github/workflows/docs.yml`, which rebuilds and deploys the site.

- The site is public, so never put secrets, safe codes, alarm codes, supplier pricing, or staff personal details in these folders.
- `blog/` is deliberately left out of the docs site so posts don't appear on two domains (the main Square site is the canonical home for blog posts).
- `CLAUDE.md` is not published on the docs site, but it is visible in the public GitHub repo.
- Preview locally with `pip install -r requirements-docs.txt` and then `scripts/build-docs.sh serve`. The build runs in `--strict` mode, so broken internal links fail the deploy.
- The theme copies the Square site: logos and favicon in `site/assets/images/` (taken from the live site), brand colours and fonts in `site/stylesheets/extra.css`. The writer-facing rules and copy-paste components (header block, warning, allergen note, checklist) are in `site/guide/style-guide.md`. Follow it and keep it up to date.
- The navigation is generated from folders and filenames. Start each doc with an H1, because that becomes its page title.
- DNS: a `CNAME` record for `docs` points to `hoangqwe159.github.io`. It is managed in the Square Dashboard (the domain's nameservers are register.com, through Square).

Create a folder when it is first needed. Use kebab-case filenames, for example `procedures/closing-checklist.md` and `blog/2026-11-best-desserts-surfers-paradise.md`.

## Writing staff docs (training, SOPs, maintenance)

The readers are casual and part-time staff. Many are students or working-holiday makers, and English may be their second language. Write for someone holding the document at the station during a rush.

- Use short numbered steps, one action per step, starting with a verb ("Wipe…", "Check…", "Set the timer to…").
- Give exact quantities, temperatures, times, and settings. Write "Cook 2 min 30 s at 180 °C", not "cook until done".
- Put safety and allergen warnings **before** the step they apply to, marked **⚠️ Warning**.
- End every SOP and maintenance doc with a checklist that can be printed and ticked off.
- Start each doc with this header block: purpose, who does it, when/how often, time needed, equipment/supplies, last reviewed date.
- Follow Queensland and Australian rules: Food Standards Australia New Zealand (FSANZ) Standard 3.2.2A (Food Safety Supervisor, food handler training), the 2-hour/4-hour rule for potentially hazardous food, cold food at 5 °C or below, hot food at 60 °C or above, and allergen declaration under Plain English Allergen Labelling (PEAL). Allergens to cover on this menu include milk, egg, gluten/wheat, soy, peanut/tree nuts (spreads and toppings), and fish (pork floss can contain fish or soy, so check the label).
- **Never invent equipment models, settings, or supplier details.** If you don't know something, put `TODO(owner): …` in the doc and list it in your reply. For maintenance steps, follow the manufacturer's manual when the owner supplies one.
- Keep docs printable: plain Markdown, no wide tables, and each SOP short enough to fit on one or two A4 pages.

## Writing SEO blog posts

Goal: rank for local dessert searches on the Gold Coast and get people into the shop or ordering online.

- Target keywords: soufflé pancakes Gold Coast / Surfers Paradise, bubble waffle Gold Coast, bingsu Gold Coast, bubble tea Surfers Paradise, late night desserts Surfers Paradise, dessert near Cavill Ave / Elkhorn Ave, things to do at night in Surfers Paradise.
- Start each post with front matter:
  ```yaml
  ---
  title:            # under 60 characters, includes the main keyword
  meta_description: # 140–155 characters
  slug:
  target_keyword:
  status: draft | published
  published_url:
  date:
  ---
  ```
- Length is 700–1,200 words. Use one H1, then H2/H3 sections. Mention Surfers Paradise or Gold Coast naturally, at least in the intro, one H2, and the conclusion. End with a call to action (visit Shop 10/2 Elkhorn Ave, open until 10:30 pm, or order online).
- Write content that is useful and true: guides, how a soufflé pancake is made, a bingsu explainer, a late-night itinerary for Surfers. Don't stuff keywords, don't make claims you can't back up ("best in Australia"), and don't write fake reviews or quotes.
- Suggest 2–3 image ideas with descriptive alt text for each post (the site's current alt text is "Waffle Dessert Souffle Gold Coast Surfers").
- Posts are published by pasting them into Square Online, which has a blog/page editor. Square does not deploy from this repo. After publishing, set `status: published` and fill in `published_url`.

## Known website issues (check and fix in the Square Online editor)

Found on 2026-11-06 while reading the live homepage:

1. **The Location & Hours block on the homepage shows Square's placeholder data:** "Square Inc, Market Street, San Francisco 94103", "(555) 555-5555", "hi@mystore.com", and hours of 9 am–5 pm with Sunday closed. The real address and hours (Elkhorn Ave, 11:30 am–10:30 pm daily) are in the Square location settings, but this block isn't connected to them. It confuses customers and hurts local SEO.
2. The homepage `<title>` ("Souffle Pancakes, Bubble Waffles & Milk Tea Surfers Paradise") and the `og:title` ("Desserts, Waffles & Bubble Tea Surfers Paradise") don't match. This is minor, but the two should be aligned.
3. The site has only a Home page and an Order page. There is an "About" page in the SEO settings but it isn't published (`/about` returns 404). There are no menu, about, or blog pages to rank.

## Facts still needed from the owner

Ask before writing docs that depend on these: equipment brands and models, supplier names, opening/closing times for staff (as opposed to trading hours), the POS and cash-handling process, the name of the Food Safety Supervisor, recipe portion specs, and whether staff docs should also have a Vietnamese (or other language) version.

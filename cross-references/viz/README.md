# Cross-Reference Matrix Visualization

Self-contained, single-file HTML rendering of `../coverage-matrix.csv` as an interactive customer-facing sales artifact.

## What it does

1. **Hero stats** — 36 obligations, 58 NIST controls, $25M penalty ceiling, 0.93 avg confidence
2. **Scope calculator** — customer toggles jurisdictions; the page computes:
   - Total atomic obligations in scope
   - Minimum NIST control set covering ≥85% of those obligations
   - Direct legal spend estimate vs. Sentainel annual subscription
3. **Full matrix** — interactive obligation × control grid, color-coded by coverage level, with hover tooltips showing citations and implementation notes
4. **Strategic insights** — three short value-prop cards aligned to the customer's decision journey

## How to use it

- **Open in browser:** just open `index.html`. No build step, no dependencies.
- **Deploy:** drop the file on Netlify / Vercel / Cloudflare Pages / S3. Or paste into any CMS.
- **Embed:** the whole thing is one file with inline styles and inline data. Iframe it anywhere.

## Data freshness

The CSV is embedded directly in the HTML at build time. When `coverage-matrix.csv` is updated, regenerate this file:

```bash
# (Future) Script to re-embed CSV into the HTML
# For now, manual update: replace the COVERAGE_DATA backtick block
```

## Aesthetic notes

- Dark mode by default (matches compliance-tooling UI conventions)
- Fraunces (display) + JetBrains Mono (data) + Inter (body) — no system fonts
- One accent color (`#d9ff00` — Sentainel lime) used sparingly to mark safe-harbor and active state
- No gradients, no glassmorphism, no purple
- Subtle SVG noise overlay at 4% opacity for paper texture

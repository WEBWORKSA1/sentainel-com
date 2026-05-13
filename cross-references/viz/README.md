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
5. **Shareable links** — selected jurisdictions are encoded in the URL (`?juris=US-TX,CA-QC`), so a Texas+Quebec-focused prospect gets a pre-configured view
6. **Print / PDF** — `Print / PDF` button (top-right) opens the browser print dialog with a clean light-mode stylesheet, dynamic header showing the current selection, and a flowed matrix with no scroll container

## How to use it

- **Open in browser:** just open `index.html`. No build step, no dependencies.
- **Deploy:** drop the file on Netlify / Vercel / Cloudflare Pages / S3. Or paste into any CMS.
- **Embed:** the whole thing is one file with inline styles and inline data. Iframe it anywhere.

## Shareable links — `?juris=` query parameter

The viz reads the `juris` query param on load and pre-selects jurisdictions:

```
?juris=US-TX,CA-QC           # Texas + Quebec (group codes)
?juris=US-TX                 # Texas only
?juris=CA-ON                 # All three Ontario regulations
?juris=ca-on-bill-149        # One specific Ontario regulation
?juris=US-TX,ca-on-mfippa    # Mix groups + specific codes
```

**How it works:**

- Group codes (`US-TX`, `CA-QC`, `CA-ON`) — preferred for sales links. Expand to all jurisdictions in that group.
- Specific jurisdiction codes (`us-tx-traiga`, `ca-qc-law-25`, `ca-on-bill-149`, `ca-on-human-rights-code`, `ca-on-mfippa`) — for fine-grained pre-selection
- Case-insensitive: `?juris=us-tx,ca-qc` works the same as `?juris=US-TX,CA-QC`
- Unknown tokens silently ignored
- URL auto-updates on every toggle so the address bar is always shareable
- Missing param → defaults to all jurisdictions selected

**Sales use case:** prospect at a Texas-based SaaS that also operates in Montreal? Send them `https://your-host/?juris=US-TX,CA-QC` and the page opens already showing their exposure (29 obligations, 5 controls cover 93%).

The "Copy link" button in the nav (and inline link inside the picker) copies the current URL to clipboard via the Clipboard API.

## Print / PDF export

Click the `Print / PDF` button in the nav, or hit Cmd/Ctrl+P. The print stylesheet:

- Inverts the dark palette to a clean light-mode (white background, near-black text, muted olive accent for `#5b6d00`)
- Hides nav, filter buttons, share controls, and tooltip
- Adds a dynamic header at the top of the printed output with: page title, generation date, current obligation count, control count, coverage percentage, and the list of selected jurisdictions by name
- Forces the matrix scroll container to flow at its natural height (no clipped data)
- Forces print-color-adjust on cell swatches so coverage colors actually appear in the PDF
- Uses A4 portrait with 18mm × 14mm margins

The print stylesheet is wrapped in `@media print` so it has zero impact on screen rendering. Browsers also let users choose paper size and landscape orientation from the print dialog — landscape is usually better for the matrix section if it spans many controls.

## Embedding in the marketing site

The viz posts its scroll height to its parent window via `postMessage` on load, on every toggle, and on window resize. This solves the perennial iframe-height-detection problem.

**Message contract:**

```javascript
// Posted by the viz
{ type: 'sentainel-resize', height: <number> }
```

**Parent-side handler:**

```html
<iframe
  src="https://your-host/cross-references/viz/?juris=US-TX,CA-QC"
  id="sentainel-viz"
  style="width:100%; min-height:3200px; border:0; display:block;"
  scrolling="no"
></iframe>

<script>
  window.addEventListener('message', (event) => {
    // Origin check — replace with your viz origin
    if (event.origin !== 'https://your-host') return;
    if (event.data && event.data.type === 'sentainel-resize') {
      document.getElementById('sentainel-viz').style.height = event.data.height + 'px';
    }
  });
</script>
```

**Fallback:** if the parent never wires up the listener, `min-height: 3200px` covers the full page on desktop with all jurisdictions selected. The user just won't get the automatic resize when they toggle jurisdictions or when the window resizes.

The viz also detects when it's not in an iframe (`window.parent === window`) and skips posting, so there's no console noise when opened standalone.

## Data freshness

The CSV is embedded directly in the HTML at build time. When `coverage-matrix.csv` is updated, regenerate this file by replacing the `const COVERAGE_DATA = \`...\`` block in `index.html`. A future build script could automate this; for now it's a manual paste.

## Aesthetic notes

- Dark mode by default (matches compliance-tooling UI conventions); switches to light mode automatically for print
- Fraunces (display) + JetBrains Mono (data) + Inter (body) — no system fonts
- One accent color (`#d9ff00` — Sentainel lime) used sparingly to mark safe-harbor and active state; print version uses muted olive `#5b6d00` for ink legibility
- No gradients, no glassmorphism, no purple
- Subtle SVG noise overlay at 4% opacity for paper texture (suppressed in print)

## Version history

- **v1.1** (2026-05-13) — URL state hydration via `?juris=`, Copy Link / Print PDF buttons, print stylesheet, postMessage iframe resize protocol
- **v1.0** (2026-05-13) — initial release: hero + scope calculator + full matrix + insights

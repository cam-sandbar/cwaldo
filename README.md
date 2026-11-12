# Sandbar Digital — client documents

Source for the two client-facing PDFs in this folder.

```
src/proposal.html     → CEA Website Audit and Project Proposal.pdf   (8 pp)
src/investment.html   → CEA Scope of Work and Deliverables - Final .pdf (6 pp)
src/doc.css           shared document system (type, color, tables, page furniture)
assets/fonts/         Source Serif 4 + Inter (latin subsets, SIL Open Font License)
build.sh              renders both PDFs with headless Chrome
```

## Rebuilding

```
./build.sh
```

Each `<section class="page">` is one printed page, so page breaks are explicit: if you add
copy, check that the page still ends above the running footer before sending the file.

## Design system

- **Navy `#12324E`** is the primary; **`#0B2237`** is the cover field.
- **Amber `#D2762F`** is tertiary and appears exactly once per document — the Sandbar Digital
  wordmark on the cover. Nothing else in either file uses it.
- Body copy is Source Serif 4 at 10.5 pt / 1.58; headings, labels, table heads, and all figures
  are Inter. Figures use tabular numerals.
- Tables are ruled, not boxed: a navy rule under the header, hairlines between rows, optional
  zebra fill `#F4F6F8`. Totals sit above a navy rule.

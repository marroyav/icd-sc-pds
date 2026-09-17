# Document validation

Validated 17 September 2026.

- Tectonic 0.16.9: successful build, 15 pages, no TeX box warnings or undefined references.
- PDF text: no unresolved references or references to the previous SC–PDS draft.
- Page geometry: all extracted text lies within its page; no near-empty overflow page.
- Visual review: title/review page, physical diagram, protocol diagram, table layout and reference page inspected.
- The two CCM physical paragraphs match the pinned daphne-icd source after whitespace normalization. The document class and logo match the reference files byte for byte.
- FD-VD arithmetic: 1,344 / 32 = 42 boards; (352 + 320) × 2 = 1,344 channels.
- Document scope: two substantive sections, physical layer and protocols; no variable catalogue or classification.
- Timing amendment: separate timing protocol, cross-interface reset acknowledgement and outage recovery requirements included; document artifact checked.
- Sources: nine reference groups; source hashes are recorded in references/source-manifest.json.
- Git whitespace checks cover the authored files. The unchanged imported document class is excluded because its source contains trailing whitespace.

PDF SHA-256: `29b1ebf3adabfa3dc3e6336737464fca0246c8c032c81ae341d31f2f5cf65107`

These checks validate the document artifact. Physical installation, protocol integration, traffic limits and hardware behavior require the evidence specified in the draft.

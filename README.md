# SC–PDS–DPS interface control document

Author: Manuel Arroyave. Revision 0.1, 17 September 2026. **Draft for review.**

[Read the PDF](main.pdf). The editable source is [main.tex](main.tex).

This first draft covers two subjects:

1. The physical CCM connection copied from the DAQ–PDS ICD: one 1 GbE SFP connection per DAPHNE, through the switch to physical server infrastructure. FD-VD has 1,344 channels, 32 allocated channels per board and **42 boards**.
2. The protocols and their endpoints: DAQ configuration integrated into the external OPC UA server, the board-facing Protobuf/ZeroMQ/TCP service, and **Hermes remaining separate on IPBus/UDP over the same board Ethernet connection**. Timing, opmon, supporting services and related PDS/DPS protocol boundaries are addressed with their actual network placement or an explicit unresolved interface detail.

The document contains no monitored-variable list, variable classification, tag model or protection logic. It does not prescribe opmon as an SC ingress path. Detailed deployment choices and unverified interfaces are marked for completion.

## Format and provenance

The document class, logo, title/review page and section layout follow [`marroyav/daphne-icd`](https://github.com/marroyav/daphne-icd/tree/6c0b24542f9b2504037aa895250d1441ee209fd2). The original class attribution is retained. The physical CCM wording is copied from that repository's `sections/04_interfaces.tex`; it is identical in the pinned main and proposed-v8 revisions.

Review and approval fields remain pending. Immutable source revisions and local source hashes are recorded in [references/source-manifest.json](references/source-manifest.json). References R1–R9 in the PDF identify which material supports each part.

## Build

With Tectonic (verified with version 0.16.9):

```sh
make
make check
```

The first build may download TeX packages. If Tectonic is not on `PATH`, use `make TECTONIC=/path/to/tectonic`. Alternatively, a TeX Live installation with the required packages can run `latexmk -pdf main.tex`.

`main.pdf` is included for review; rebuild it whenever the source changes. Auxiliary build files are ignored. [VALIDATION.md](VALIDATION.md) records document checks and their limits.

## Files

- `main.tex`: title, review table and document assembly.
- `sections/01_physical_layer.tex`: physical connection, inventory and installation details.
- `sections/02_protocols.tex`: protocol architecture, interaction patterns and completion items.
- `sections/references.tex`: source references and status.
- `cernatlasnote.cls`, `images/logosolo.png`: format assets from `daphne-icd`.

The proposed OPC UA integration and Hermes exception must be reconciled with the DAQ–PDS and DAQ–SC/DPS documents before interface approval.

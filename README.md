# SC–PDS–DPS interface control document

Manuel Arroyave · revision 0.2 · 17 September 2026 · draft for review.

[Read the PDF](main.pdf) · [LaTeX source](main.tex)

The document covers DAPHNE control, configuration and monitoring over the shared 1 Gb Ethernet connection.

- FD-VD: 1,344 channels, 32 per board, **42 boards**. FD-HD: 6,000 channels, 40 per board, **150 boards**.
- DAQ configuration, including local timing-endpoint control, is integrated into the external OPC UA server. Hermes remains separate.
- Configuration/control uses request/response. Monitoring is published: firmware counters to DAQ opmon; voltages, temperatures, fans, service status and versions to SC.
- SC can recover timing through the same configuration interface and publish board readiness.

DAQ data readout and optical timing transport are outside the scope. The single diagram shows service placement and configuration/publication paths. Detailed variable lists are not included.

The format and physical-interface baseline come from [daphne-icd](https://github.com/marroyav/daphne-icd/tree/6c0b24542f9b2504037aa895250d1441ee209fd2). [Source provenance](references/source-manifest.json) pins the configuration implementations. Publication endpoints and SC recovery describe the target architecture; their deployment is not established by this document.

## Build

```sh
make
make check
```

Requires Tectonic (verified: 0.16.9); override its path with `make TECTONIC=/path/to/tectonic`. TeX Live users may run `latexmk -pdf main.tex`. Build checks are recorded in [VALIDATION.md](VALIDATION.md).

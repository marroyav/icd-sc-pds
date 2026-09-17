# SC–PDS–DPS interface control document

Manuel Arroyave · revision 0.2 · 17 September 2026 · draft for review.

[Read the PDF](main.pdf) · [LaTeX source](main.tex)

The document covers control, configuration and monitoring for DAPHNE, the PDS Calibration Box and the PDS Power-over-Fiber (PoF) laser boxes.

- FD-VD: 1,344 channels, 32 per board, **42 boards**. FD-HD: 6,000 channels, 40 per board, **150 boards**.
- PDS provides detector/calibration hardware, firmware, native services and specifications. SC provides control/monitoring infrastructure and data/control access arbitration. DPS provides protection infrastructure and detector protection. DAQ is a user of the detector.
- DAQ CCM requests run and timing-endpoint configuration through the configuration component in the SC-provided external OPC UA server. Hermes receives configuration over its separate UDP/IPBus endpoint.
- Configuration/control uses request/response. `daphne-server` publishes firmware counters, timing state and applied readout configuration through the OPC UA server to DAQ opmon. SC receives voltages, temperatures, fans, service status and versions.
- SC can recover timing through the same configuration interface and publish board readiness.
- Each DAPHNE and each Calibration Box (LCM) has its own 1 GbE CCM link. Calibration and PoF controllers have separate endpoints and adapters to the external OPC UA server. Their native protocols, box inventories and the PoF physical interface remain to be specified.
- DAQ uses the PDS calibration service for settings and sequences; SC supplies arbitration, equipment control and monitoring. PoF control includes published operating/protection status and acknowledgement of protective inhibits.

DAQ data readout and optical timing transport are outside the scope. The single diagram shows service placement and configuration/publication paths. Detailed variable lists are not included.

The format and physical-interface baseline come from [daphne-icd](https://github.com/marroyav/daphne-icd/tree/6c0b24542f9b2504037aa895250d1441ee209fd2). Server and runtime sources use [DUNE-DAQ/daphne-os](https://github.com/DUNE-DAQ/daphne-os/tree/e31bdfbfcc177c06458a5a05189e91a3b17fc7d5). [Source provenance](references/source-manifest.json) pins the revisions and file hashes. Publication endpoints and SC recovery describe the target architecture; their deployment is not established by this document.

## Build

```sh
make
make check
```

Requires Tectonic (verified: 0.16.9); override its path with `make TECTONIC=/path/to/tectonic`. TeX Live users may run `latexmk -pdf main.tex`. Build checks are recorded in [VALIDATION.md](VALIDATION.md).

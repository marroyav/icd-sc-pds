# SC–PDS–DPS interface control document

Manuel Arroyave · EDMS 3309688 · revision 0.2 · 17 September 2026 · draft for review.

[Read the PDF](main.pdf) · [LaTeX source](main.tex)

The document covers control, configuration and monitoring for DAPHNE, the Light Calibration Module and the PDS Power-over-Fiber (PoF) laser boxes.

## Document structure

1. **Responsibilities:** PDS provides photon detector and light calibration hardware, firmware, native services, detector specifications and detector operating restrictions, plus health monitoring information sufficient for SC to assess and confirm detector health. SC supplies control/monitoring infrastructure and access arbitration, and assesses and publishes detector status. DPS supplies protection infrastructure and detector protection. DAQ checks SC's published status and completes a handshake with Operations before taking data, configures and collects detector data, and provides calibration datasets agreed in advance with PDS.
2. **Physical interface:** separate DAPHNE, Light Calibration Module and PoF subsections.
3. **Protocols and services:** separate DAPHNE, Light Calibration Module and PoF subsections, each with its own service-location table and protocol description.
4. **Interface release and verification.**

DAPHNE covers 42 FD-VD boards (1,344 channels / 32) and 150 FD-HD boards (6,000 / 40), with one 1 GbE CCM link per board. Its service chain is **DAPHNE: AXI / OS → daphne-server → ZMQ; SC bridge server: ZMQ client → OPC UA bridge; SC server: OPC UA client → Ignition**. DAQ configuration and arbitration reside in the OPC UA bridge. Hermes retains its separate configuration path; SC timing recovery uses the bridge. LCMs use the same timing protocol and recovery contract as DAPHNE, through their own service and OPC UA adapter. Remaining LCM and PoF native protocol specifications are recorded under their respective hardware systems. LCM planning inventory: 8 FD-VD and 18 FD-HD, pending current PDS confirmation. PoF design inventory: 80 FD-VD boxes; none for FD-HD. PoF uses a compact PLC with OPC UA integration into Ignition. The PLC-to-OPC-UA protocol, driver and server location are undecided. PoF interfaces with SC and DPS only; it has no DAQ interaction.

DAQ data readout, optical timing transport and detailed variable lists are outside the scope. The single diagram describes DAPHNE protocols and services.

The format and physical-interface baseline come from [daphne-icd](https://github.com/marroyav/daphne-icd/tree/6c0b24542f9b2504037aa895250d1441ee209fd2). Server and runtime sources use [DUNE-DAQ/daphne-os](https://github.com/DUNE-DAQ/daphne-os/tree/e31bdfbfcc177c06458a5a05189e91a3b17fc7d5). [Source provenance](references/source-manifest.json) pins the revisions and file hashes. Publication endpoints and SC recovery describe the target architecture; their deployment is not established by this document.

## Build

```sh
make
make check
```

Requires Tectonic (verified: 0.16.9); override its path with `make TECTONIC=/path/to/tectonic`. TeX Live users may run `latexmk -pdf main.tex`. Build checks are recorded in [VALIDATION.md](VALIDATION.md).

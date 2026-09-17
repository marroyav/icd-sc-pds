# Document validation — revision 0.2

Validated 17 September 2026.

- Tectonic 0.16.9: successful build, **6 pages**, no warnings, overflow or undefined references.
- Text remains within page bounds; responsibility and service tables, box interfaces, protocol diagram and references were visually reviewed.
- PDS provides detector/calibration hardware, firmware, native services and specifications. SC provides infrastructure and data/control access arbitration. DPS provides protection infrastructure and detector protection. DAQ uses the detector.
- Calibration Box and PoF laser boxes are included in scope, service placement and protocol requirements. LCM 1 GbE CCM and cathode PoF supply follow R2; box native protocols, quantities, PoF physical/controller placement and controller/DPS connection remain open.
- Inventory: FD-VD 1,344 / 32 = 42; FD-HD 6,000 / 40 = 150.
- DAQ CCM requests run-variable and timing-endpoint configuration through SC infrastructure. Configuration/control uses request/response.
- daphne-server publishes firmware counters, timing state and applied readout configuration through OPC UA to DAQ opmon. Hermes receives configuration over UDP/IPBus; no Hermes counter-publication path is present.
- SC receives equipment monitoring and versions, can recover timing and publishes board readiness.
- No data-readout transport, optical timing transport or detailed variable catalogue is described. Six source-reference groups remain.
- Server/runtime references and file hashes use DUNE-DAQ/daphne-os at `e31bdfbfcc177c06458a5a05189e91a3b17fc7d5`; the pinned commit was verified on the published branch. PDF text and links use that repository.
- Git whitespace checks cover authored files; the imported class retains upstream formatting.

PDF SHA-256: `6be4cb470caf6001a390f2d4fa262eb491a97cc0488f0cf6e5138460e2a5846e`

These are document checks. Publication endpoints, SC recovery and calibration/PoF integration require implementation and qualification.

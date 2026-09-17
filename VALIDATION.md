# Document validation — revision 0.2

Validated 17 September 2026.

- Tectonic 0.16.9: successful build, **7 pages**, no warnings, overflow or undefined references.
- Section 2 is Physical interface; Section 3 is Protocols and services. Both have separate DAPHNE, Light Calibration Module and PoF subsections. Each hardware system has its own service-location table.
- PDF outline, text, page bounds and changed layouts checked. The summary explicitly includes DPS protection interfaces and its role; cover metadata uses EDMS 3309688 as instructed. One DAPHNE protocol diagram is retained.
- PDS provides photon detector and light calibration hardware, firmware, native services, detector specifications and detector operating restrictions. SC provides infrastructure and access arbitration. DPS provides protection infrastructure and detector protection. DAQ uses the detector.
- DAPHNE design inventory: FD-VD 1,344 / 32 = 42; FD-HD 6,000 / 40 = 150.
- LCM planning inventory: 8 FD-VD and 18 FD-HD, explicitly pending current PDS confirmation. PoF design inventory: 80 FD-VD boxes; none for FD-HD. R7 independently supports approximately 80 FD-VD laser-box units; it does not establish an installed inventory.
- Configuration/control uses request/response; monitoring is published. daphne-server publishes firmware counters, timing state and applied readout configuration through OPC UA to DAQ opmon. SC receives equipment monitoring and versions. Hermes receives UDP/IPBus configuration and has no counter-publication path.
- LCMs use the same timing protocol and recovery requirements as DAPHNE through their own service/OPC UA adapter. Reset acknowledgement, authorized SC recovery, arbitration, published endpoint state and readiness are required.
- PoF has no DAQ interaction: no DAQ client or availability subscription remains in its service contract. PoF interfaces with SC and DPS only.
- No detailed variable catalogue, data-readout transport or optical timing transport is described. Seven reference groups remain. Legacy server-repository and superseded source links are absent. EDMS 3309688 is retained as the document ID by author instruction.
- Server/runtime sources remain pinned to DUNE-DAQ/daphne-os at e31bdfbfcc177c06458a5a05189e91a3b17fc7d5. R7 URL, PDF hash and inventory evidence status are recorded in the source manifest.
- Git whitespace and JSON parsing checks pass. The imported class retains upstream formatting.

PDF SHA-256: `d35398b2f84b38353813a922d2bf5be45f3148584421539d4eabe2cd649d50bd`

These are document checks. Publication endpoints, SC recovery and LCM/PoF integration require implementation and qualification. Native control specifications and the PoF physical/protection interface remain open.

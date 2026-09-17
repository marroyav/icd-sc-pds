# Document validation — revision 0.2

Validated 17 September 2026.

- Tectonic 0.16.9: successful build, **7 pages**, no warnings, overflow or undefined references.
- Section 2 is Physical interface; Section 3 is Protocols and services. Both have separate DAPHNE, Light Calibration Module and PoF subsections. Each hardware system has its own service-location table.
- PDF outline, text, page bounds and changed layouts checked. The summary explicitly includes DPS protection interfaces and its role; cover metadata uses EDMS 3309688 as instructed. One DAPHNE protocol diagram is retained.
- PDS provides photon detector and light calibration hardware, firmware, native services, detector specifications and detector operating restrictions, plus health monitoring information sufficient for SC to assess and confirm detector health. SC provides infrastructure and access arbitration, and assesses and publishes detector status. DPS provides protection infrastructure and detector protection. DAQ must check SC status and handshake with Operations before taking data, configure and collect detector data, and provide calibration datasets agreed in advance with PDS.
- DAPHNE design inventory: FD-VD 1,344 / 32 = 42; FD-HD 6,000 / 40 = 150.
- LCM planning inventory: 8 FD-VD and 18 FD-HD, explicitly pending current PDS confirmation. PoF design inventory: 80 FD-VD boxes; none for FD-HD. R7 independently supports approximately 80 FD-VD laser-box units; it does not establish an installed inventory.
- DAPHNE service table and diagram show AXI / OS → daphne-server → ZMQ on DAPHNE; ZMQ client → OPC UA bridge on the SC bridge server; OPC UA client → Ignition on the SC server. Configuration and publication text follows those locations. The changed table and diagram were visually reviewed.
- Configuration/control uses request/response; monitoring is published. daphne-server publishes firmware counters, timing state and applied readout configuration through OPC UA to DAQ opmon. SC receives equipment monitoring and versions. Hermes receives UDP/IPBus configuration and has no counter-publication path.
- LCMs use the same timing protocol and recovery requirements as DAPHNE through their own service/OPC UA adapter. Reset acknowledgement, authorized SC recovery, arbitration, published endpoint state and readiness are required.
- PoF specifies a compact PLC and OPC UA integration into Ignition. PLC-to-OPC-UA protocol, driver, transport, ports and server location are undecided. No separate native service or adapter on an SC physical server is asserted. The corrected PoF layout was reviewed.
- PoF has no DAQ interaction: no DAQ client or availability subscription remains in its service contract. PoF interfaces with SC and DPS only.
- No detailed variable catalogue, data-readout transport or optical timing transport is described. Seven reference groups remain. Legacy server-repository and superseded source links are absent. EDMS 3309688 is retained as the document ID by author instruction.
- Server/runtime sources remain pinned to DUNE-DAQ/daphne-os at e31bdfbfcc177c06458a5a05189e91a3b17fc7d5. R7 URL, PDF hash and inventory evidence status are recorded in the source manifest.
- Git whitespace and JSON parsing checks pass. The imported class retains upstream formatting.

PDF SHA-256: `5d453dd3a7baf1481a5e87fa849d8fc47e80fb191359af043264535190183fb3`

These are document checks. Publication endpoints, SC recovery and LCM/PoF integration require implementation and qualification. Native control specifications and the PoF physical/protection interface remain open.

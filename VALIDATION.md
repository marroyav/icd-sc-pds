# Document validation — revision 0.2

Validated 17 September 2026.

- Tectonic 0.16.9: successful build, **5 pages**, no overflow or undefined references; minor paragraph spacing warning.
- Text remains within page bounds; the single protocol diagram and monitoring table were reviewed after the CCM/opmon correction.
- Inventory: FD-VD 1,344 / 32 = 42; FD-HD 6,000 / 40 = 150.
- DAQ CCM controls run variables and timing-endpoint settings. Configuration/control uses request/response.
- daphne-server publishes firmware counters, timing state and applied readout configuration through OPC UA to DAQ opmon. Hermes receives configuration over UDP/IPBus; no Hermes counter-publication path is present.
- SC receives equipment monitoring and versions, can recover timing and publishes board readiness.
- No data-readout transport, optical timing transport or detailed variable catalogue is described. Six source-reference groups remain.
- Git whitespace checks cover authored files; the imported class retains upstream formatting.

PDF SHA-256: `f4e4666107357190e574571512a51a77b744fb770f725ceb560381adfda0f988`

These are document checks. Publication endpoints and SC recovery integration require implementation and qualification.

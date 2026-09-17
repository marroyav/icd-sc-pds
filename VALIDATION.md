# Document validation — revision 0.2

Validated 17 September 2026.

- Tectonic 0.16.9: successful build, **5 pages**, no overflow or undefined references; minor paragraph spacing warning.
- Text remains within page bounds; the single protocol diagram and monitoring table were reviewed after the CCM/opmon correction.
- Inventory: FD-VD 1,344 / 32 = 42; FD-HD 6,000 / 40 = 150.
- DAQ CCM controls run variables and timing-endpoint settings. Configuration/control uses request/response.
- daphne-server publishes firmware counters, timing state and applied readout configuration through OPC UA to DAQ opmon. Hermes receives configuration over UDP/IPBus; no Hermes counter-publication path is present.
- SC receives equipment monitoring and versions, can recover timing and publishes board readiness.
- No data-readout transport, optical timing transport or detailed variable catalogue is described. Six source-reference groups remain.
- Server/runtime references and file hashes use DUNE-DAQ/daphne-os at `e31bdfbfcc177c06458a5a05189e91a3b17fc7d5`; the pinned commit was verified on the published branch. PDF text and links use that repository.
- Git whitespace checks cover authored files; the imported class retains upstream formatting.

PDF SHA-256: `0f68411184bc0209e720ead947e77ded8a2a7ead37cfc3fa3454aa340cec1ea7`

These are document checks. Publication endpoints and SC recovery integration require implementation and qualification.

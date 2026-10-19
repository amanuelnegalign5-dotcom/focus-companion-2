# Focus Companion 2.0 Architecture

## Shared core
Flutter/Dart shared presentation, domain models, application state and portable services.

## Feature modules
Home, notes, tasks, focus, library, import and settings are isolated so future capabilities can be added without rewriting the core.

## Integration boundaries
Future Google Keep, cloud, LAN, AI and OS integrations should be adapters/connectors behind interfaces. The UI must read capability/status from the connector rather than assuming availability.

## Storage
Local-first canonical records. Imported originals are separate from derived thumbnails, extracted text, OCR and AI artifacts.

## Sync
Sync must be idempotent, revision-aware and conflict-safe. Import, backup, sync and share are distinct operations.

## Security
Imported files are untrusted. Validate file type/size, protect ZIP extraction against path traversal, never execute embedded content, and keep secrets out of logs. Production encryption requires a reviewed key hierarchy and platform secure storage.

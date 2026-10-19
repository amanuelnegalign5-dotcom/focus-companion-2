# Focus Companion 2.0

Fresh, separate Flutter-first project. The existing `focus-companion-app` repository is preserved and must not be overwritten.

## Included source
- Amharic-first/local-first dashboard
- Notes, tasks, focus timer and local library
- Multi-file import foundation for books, images, documents and archives
- Search over local notes
- Ethiopian calendar display module
- Feature-status labels
- Architecture/roadmap/specification documents

## Explicitly not implemented
- Live Google Keep synchronization
- Google Keep Takeout parser
- Encrypted LAN sync
- Cloud storage
- On-device AI
- Screen Time integration
- Cross-app blocking
- Native push notifications
- Orthodox calendar overlays
- Advanced rich text
- Production-grade encryption/key management

These are intentionally marked as planned/restricted rather than represented as working capabilities.

## Run
```bash
flutter pub get
flutter analyze
flutter test
flutter run
```

Flutter supports Android, iOS, Windows, macOS, Linux and web, with platform-specific tooling and integration requirements. iOS development/building requires macOS.

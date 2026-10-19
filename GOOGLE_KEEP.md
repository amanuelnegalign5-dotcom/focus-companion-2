# Google Keep

Google Keep is the primary external migration source.

## First implementation path
1. User exports Keep data using Google Takeout/official export.
2. Focus Companion previews the archive.
3. User selects notes/files.
4. Import creates local records and preserves available source metadata.
5. Repeat imports use stable source IDs/hashes to avoid blind duplication.

## Live sync
NOT IMPLEMENTED.

Google's current Keep API documentation describes an enterprise-oriented API and authorization scopes. A live connector therefore requires an eligibility proof-of-concept, OAuth authorization, applicable verification/admin approval, and real-account tests before being exposed as a working consumer feature.

Never request the user's Google password, scrape Keep, or use undocumented endpoints.

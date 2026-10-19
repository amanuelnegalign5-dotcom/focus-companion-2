# Platform Restrictions

## iOS
Screen Time/app-blocking functionality requires Apple-specific frameworks, authorization/entitlements and platform testing. Not implemented. Native push and share extensions also require platform configuration and permissions.

## Android
Cross-app blocking requires Android-specific APIs/permissions and policy-compliant implementation. Notifications require platform-specific permission/configuration on applicable versions.

## Desktop
Windows/macOS/Linux builds are supported by Flutter, but native integrations require platform-specific tooling and testing.

## Web
Web does not provide the same filesystem, background execution, Screen Time, or app-blocking capabilities as native targets.

## Rule
Any capability requiring OS permission, entitlement, administrator approval or provider approval must be explicitly labelled instead of being presented as universally available.

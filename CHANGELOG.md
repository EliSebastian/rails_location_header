## [1.0.1] - 2025-03-24

### Added

- Introduced `rubocop-performance` gem for enhanced linting capabilities.
- Enabled additional RuboCop cops for improved code quality and consistency.

### Changed

- Updated `.rubocop.yml` to include detailed configuration for various cops.
- Updated `Gemfile` to use single quotes for consistency.
- Updated `Gemfile.lock` to reflect the addition of `rubocop-performance`.
- Updated `rails_location_header.gemspec` to improve formatting and readability.
- Updated `lib/rails_location_header.rb` and other files to align with RuboCop's style guidelines:
  - Replaced double quotes with single quotes where applicable.
  - Adjusted method calls to remove unnecessary parentheses.
  - Improved formatting for multi-line method calls.

### Fixed

- Fixed minor inconsistencies in the `ControllerExtension` and `Railtie` modules.
- Fixed version mismatch in `lib/rails_location_header/version.rb` (updated to `1.0.1`).

### Removed

- Removed unnecessary comments and redundant code from `rails_location_header.gemspec`.

## [1.0.0] - 2025-03-24

### Added

- Added `X-Entity-ID` and `Location` headers to `create` actions via `ControllerExtension`.
- Introduced `Middleware` class for potential future enhancements.
- Integrated `Railtie` to automatically include `ControllerExtension` in Rails controllers.
- Updated gemspec with metadata, dependencies, and author information.
- Enhanced README with installation, usage, and contribution guidelines.

### Changed

- Updated version to `1.0.0` in `version.rb`.
- Improved gemspec description and summary.

## [0.1.0] - 2025-03-24

- Initial release

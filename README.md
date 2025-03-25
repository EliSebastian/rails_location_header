# RailsLocationHeader

RailsLocationHeader is a Rails gem that automatically adds `X-Entity-ID` and `Location` headers when a new record is successfully created in a `create` action. This helps in providing additional metadata about the created resource in API responses.

## Installation

Add this gem to your application's Gemfile by executing:

```bash
bundle add rails_location_header
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install rails_location_header
```

## Usage

To use this gem, include it in your Rails application. The gem automatically integrates with Rails controllers via a Railtie and works out of the box.

### How It Works

1. **`create` action with a 201 status**: The `create` action must return an HTTP `201 Created` status.
2. **Instance variable**: Declare an instance variable in the `create` action that matches the entity name (e.g., `@post` in `PostsController`).
3. **`show` action and route**: Ensure the controller has a `show` action and a corresponding route to construct the resource's URL.

### Headers Added

When the above requirements are met, the gem automatically adds the following headers to the response:

- `X-Entity-ID`: The ID of the created resource.
- `Location`: The URL of the created resource.

No additional configuration is needed.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run:

```bash
bundle exec rake install
```

To release a new version, update the version number in `lib/rails_location_header/version.rb`, and then run:

```bash
bundle exec rake release
```

This will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/EliSebastian/rails_location_header](https://github.com/EliSebastian/rails_location_header). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/EliSebastian/rails_location_header/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsLocationHeader project's codebases, issue trackers, chat rooms, and mailing lists is expected to follow the [code of conduct](https://github.com/EliSebastian/rails_location_header/blob/main/CODE_OF_CONDUCT.md).

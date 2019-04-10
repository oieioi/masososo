# masososo

Return similar characters for example ソ and ン and リ

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'masososo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install masososo

## Usage

```ruby
'ﾏﾘﾘﾝ･ﾏﾝｿﾝ'.masososo
# => "ﾏﾘﾝﾝ･ｱﾝﾝﾝ" or "ｱｿﾝｿ･ﾏﾝﾝﾘ" or "ｱﾘﾘﾝ･ﾏﾘｿﾝ" or ....

?ｿ.similar_chars
# => ["ﾘ", "ﾝ"]
?ｿ.similar_chars(including_self: true)
# => ["ｿ", "ﾘ", "ﾝ"]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/oieioi/masososo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the masososo project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/oieioi/masososo/blob/master/CODE_OF_CONDUCT.md).

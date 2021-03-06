[![Gem Version](https://badge.fury.io/rb/masososo.svg)](https://badge.fury.io/rb/masososo)
[![Build Status](https://travis-ci.com/oieioi/masososo.svg?token=okzT4ciBqpfSUbg7GQfs&branch=master)](https://travis-ci.com/oieioi/masososo)
[![Coverage Status](https://coveralls.io/repos/github/oieioi/masososo/badge.svg)](https://coveralls.io/github/oieioi/masososo)

# masososo

Make typo with similar-looking characters such as "ｿ", "ﾝ", "ﾘ".

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'masososo'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install masososo

## Usage

```ruby
'リンゴを4つとみかんを7つください'.masososo
# => "ソリゴを4つとみかんをｸつくださソ"
'リンゴを4つとみかんを7つください'.masososo
# => "リリゴを4つとゐかんをﾜつくだちい"

# masososo aliased typo
'リンゴを4つとみかんを7つください'.typo
# => "ンソゴをﾑつとゐかんを7つくだちリ"

'リンゴを4つとみかんを7つください'.typo(frequency: 0.2)
# => "リンゴをﾑつとみかんを7つください"

?ｿ.similar_chars
# => ["ﾘ", "ﾝ"]
?ｿ.similar_chars(including_self: true)
# => ["ｿ", "ﾘ", "ﾝ"]
```

or

```sh
$ echo ﾘﾝｺﾞｶﾞｵｲｼｲｷｾﾂﾃﾞｽﾈ | masososo
=> ﾝﾘｺﾟｶﾞｵｲｼｲｷｾﾂﾃﾞ7ﾈ
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/oieioi/masososo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the masososo project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/oieioi/masososo/blob/master/CODE_OF_CONDUCT.md).

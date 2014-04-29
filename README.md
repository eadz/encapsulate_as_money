# EncapsulateAsMoney

Want your model attribute to be a [Money](https://github.com/RubyMoney/money)
instance? EncapsulateAsMoney provides a simple way to get this done.

## Installation

Add this line to your application's Gemfile:

    gem 'encapsulate_as_money'

And then execute:

    $ bundle

## Usage

### Rails
Example goes here

```ruby
class MyModel < ActiveRecord::Base
  encapsulate_as_money :amount
end
```

## Contributing

1. Fork it ( https://github.com/envato/encapsulate_as_money/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

```
usage: tt [options]
    -p, --path     path to run the command
    -s, --sha      a sha sum
    -j, --jump     a number to step by
    -b, --begin    the commit number to begin from
    -e, --end      the commit number to end at
    -c, --command  the command to run
    --help
```

```
▶ tt -p /Users/ashley.towns/devel/repos/atlas/ -c "du -h | tail -n 1"
765M	.
765M	.
765M	.
765M	.
765M	.
766M	.
766M	.
766M	.
766M	.
766M	.
766M	.
766M	.
766M	.
766M	.
776M	.
776M	.
776M	.
776M	.
776M	.
776M	.
776M	.
776M	.
776M	.
```

# Timetraveller

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'timetraveller'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install timetraveller

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/timetraveller/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

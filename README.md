# AnimalHaven Scraper

This CLI program will show you a list of dogs available for adoption on Animal Haven's site!  

In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/animal_scraper`. To experiment with that code, run `bin/console` for an interactive prompt.


## Installation

To install from git use these instructions:

1-clone repo 
2-​'​cd​'​ into repo 
3-​'​bundle install​'​ 
4-run 'ruby bin/animalhaven'

To install gem froem rubygems use these instructions: 

Add this line to your application's Gemfile:

```ruby
#gem 'animal_scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install animal_scraper

## Usage

- The user is presented with a menu to view all available dog adoptions. 
- To learn more about the dog, users can enter the number of the dog. 
- Typing 'exit' at any time will bring the user to the main menu or exit the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


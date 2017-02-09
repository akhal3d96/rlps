# RPS

**RPS** is a very simple and pure Ruby gem which sole prupose is to get a **list** of the currently **running processes** in a **Linux** system by reading data from Linux /proc/ directory.
More information read The Linux Documentation Project [topic](http://tldp.org/LDP/Linux-Filesystem-Hierarchy/html/proc.html) on this subject.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rps'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rps

## Usage
``` ruby
require 'rps'

my_processes = RPS.processes

p my_processes[0]       # => systemd: 1
p my_processes[0].name  # => systemd
p my_processes[0].pid   # => 1
```
Returns a list of [RPS::Process](http://www.github.com/nemoload) objects.
## CLI
**TL;DR Don't.** 
Although this gem wasn't made to be used as a CLI application, it can act as a very bad, ineffecient version of Linux ``` $ ps -e ```:
          
    $ rps
          
## Development
After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nemoload/rps.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


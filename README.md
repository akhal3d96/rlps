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

## Documentation
See https://nemoload.github.io/rps/
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
**TL;DR: Don't.** 
Although this gem wasn't made to be used as a CLI application, it can act as a very bad, ineffecient version of Linux ``` $ ps -e ```:
          
    $ rps

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nemoload/rps.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


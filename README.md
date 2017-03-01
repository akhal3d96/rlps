# RLPS

**RLPS** is a very simple and pure Ruby gem which sole purpose is to get a **list** of the currently **running processes** in a **Linux** system by reading data from Linux /proc/ directory.
More information read The Linux Documentation Project [topic](http://tldp.org/LDP/Linux-Filesystem-Hierarchy/html/proc.html) on this subject.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rlps'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rlps

## Documentation
See https://nemoload.github.io/rlps/
## Usage
``` ruby
# There are other helpful methods in addition to the ones I showed here.
# See https://nemoload.github.io/rlps/ for full documentation 

require 'rlps'

my_processes = RLPS.processes

my_processes.first            # => systemd: 1
my_processes.first.name  # => systemd
my_processes.first.pid     # => 1
my_process.class            # => Array
my_process.length          # => 150
 
#   #is_running? method is useful in daemons
my_process = RLPS.this_process
my_process.is_running?   # => true
john_cena_process = RLPS::Process.new pid:619, name: "cena"
john_cena_process.is_running?  # => false
```
## CLI
**TL;DR: Don't.**
Although this gem wasn't made to be used as a CLI application, it can act as a very bad, inefficient version of Linux ``` $ ps -e ```:

    $ rlps

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nemoload/rlps.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

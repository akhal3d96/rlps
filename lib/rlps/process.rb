module RLPS
  ##
  # Represents a process
  ##
  class Process
    attr_reader :name, :pid

    # Takes two arguments _:name_ and _:pid_
    # If called without any arguments it calls RLPS::Process.this_process.

    def initialize(**args)
      #-- other = args.select { |k, _v| ((k == :name) &&
      # !args[k].nil?) || ((k == :pid) && !args[k].nil?) }
      # raise if (other.count == 0) || (args.count != 2)
      # TODO check if this process actually exists
      @name = args[:name] || RLPS.this_process.name
      @pid = args[:pid]   || RLPS.this_process.pid
    end

    def to_s
      "#{@name}: #{@pid}"
    end

    def ==(obj)
      obj.name.casecmp(@name).zero?
    end

    def to_i
      @pid
    end

    # Returns true if the process is running.
    def is_running?
      !RLPS.processes.select { |p| p == self }.empty?
    end

    # Send INT signal to the process as a default behaviour.
    # It accepts any signal Kernel#Process takes.
    # More info: Kernel[https://ruby-doc.org/core/Kernel.html]
    def kill!(signal = 'INT')
      ::Process.kill(signal, @pid)
    end



    alias inspect to_s
  end
end

require 'rps/version'
require 'rps/process'
require 'rps/string'
require 'rps/helper/parser'

module RPS
  class << self
    attr_accessor :processes
  end

  module_function

  # Get the currently runing processes as a list.
  def processes
    @processes ||= parse_processes
  end

  # Update the already fetched processes list.
  def update!
    @process = parse_processes
  end

  private

  def self.parse_processes
    processes_arr = []
    Dir.entries('/proc/').each do |dir|
      processes_arr << RPS::Parser.process_from_dir(dir) if dir.int?
    end
    processes_arr
  end
end

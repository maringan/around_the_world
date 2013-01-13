#!/usr/bin/env ruby
require 'eventmachine'
require_relative 'lib/countries'
require_relative 'lib/handler'
require "bundler/setup"

EventMachine.run do
  Signal.trap("INT")  { EventMachine.stop }
  Signal.trap("TERM") { EventMachine.stop }

  EventMachine.start_server("0.0.0.0", 10000, Handler)
end
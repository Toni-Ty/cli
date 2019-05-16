require "cli/version"

module Cli
  class Error < StandardError; end
  # Your code goes here...
end


require 'nokogiri'  #add to spec as well
require 'pry'
require 'open-uri'

require_relative "./required/version"
require_relative './required/cli'
require_relative './required/Virtual_Cafe_Drinks' 
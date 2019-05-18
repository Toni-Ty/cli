module Cli
  class Error < StandardError; end
  # Your code goes here...
end


require 'nokogiri'  #add to spec as well
require 'pry'
require 'open-uri'

require_relative "./cli_application/version"
require_relative './cli_application/cli_interface'
require_relative './cli_application/virtual_cafe_drinks' 
require_relative './cli_application/cli_scraper'
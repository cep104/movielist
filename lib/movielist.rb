require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative "./movielist/version"

# module Movielist
  # class Error < StandardError; end
  # Your code goes here...
# end

require_relative './movielist/cli'
require_relative './movielist/movie'
require_relative './movielist/scraper'

require 'rubygems'
require 'sinatra'
require "lib/bs"

set :environment, :production
disable :run

run Sinatra::Application

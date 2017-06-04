require 'sinatra'
require 'sinatra/reloader' if development?

require_relative './controller/ferret_controller.rb'

run FerretsController

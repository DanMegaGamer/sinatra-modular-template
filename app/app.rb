%w[require_all puma sinatra].each { |library| require library }
ENV['RACK_ENV'] ||= 'development'
require 'rubygems' unless defined?(Gem)
require 'bundler/setup'
require_all 'app'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

class MyApp < Sinatra::Base
  set :app_file, __FILE__
  set :root, File.join(File.dirname(__FILE__), '..')
  set :server, :puma

  configure :development do
    require 'dotenv/load'
    enable :logging
  end

  configure :test do
    require 'byebug'
    require 'dotenv/load'
  end

  configure :production do
    enable :logging
  end

  run! if __FILE__ == $PROGRAM_NAME
end

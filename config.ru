require File.expand_path('../app/app.rb', __FILE__)
map('/') { run MyController }
run MyApp

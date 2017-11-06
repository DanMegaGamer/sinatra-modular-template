class MyController < ApplicationController
  get '/' do
    haml :my_view
  end
end

# Sinatra Modular Application Template
This is very bare bones Sinatra modular application.

## Setup
 Clone, then `bundle`.
 
`config.ru` and `Procfile` are included so start with either

`rackup`, `heroku local` or `foreman start`
 
## Environment

add a `.env` sample to the root, these values will be loaded into development/test environments. See `env.sample` for format.

```
YOUR_SECRET=UUDDLRLRBA
```

 ## Models/Services
 
 No models/services (or ORM) are included, an empty `models` directory exists within `app`, this can be renamed as all directories within `app` are autoloaded.
 
 ## Controllers
 
An empty `ApplicationController` has been included an a single example controller `MyController`.

Controller routes are mapped within config.ru, for example.

```ruby
map('/') { run MyController }
map('/v1/api') { run V1::ApiController }
```

## Views

Views are within the view directory, and use HAML by default.

View file location can be overridden throughout the app, but is currently set in ApplicationController.

```ruby
class ApplicationController < Sinatra::Base
  set :views, File.expand_path('../../views', __FILE__)
end
```

## Console

run `racksh` to load a console with the application loaded in development environment.

## Tests

`rspec` is included, along with a `support` directory that's autoloaded into test ENV.

A single example request spec is included.

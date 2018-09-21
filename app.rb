require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get 'reversename/:name' do
    "#{:name.reverse!}"
  end

  get '/square/:number' do
    "#{number ** 2}"
  end
end

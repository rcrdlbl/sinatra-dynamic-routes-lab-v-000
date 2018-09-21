require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get 'reversename/:name' do
    "#{:name.reverse!}"
  end

  get '/square/:number' do
    "#{(:number.to_i ** 2).to_s}"
  end

  get 'say/:number/:phrase' do
    :number.to_i.times do
      "#{:phrase}"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{[:word1, :word2, :word3, :word4, :word5].join(" ")}"
  end
end

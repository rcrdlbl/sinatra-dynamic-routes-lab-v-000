require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{(params[:number].to_i ** 2).to_s}"
  end

  get '/say/:number/:phrase' do
    phrases = []
    params[:number].to_i.times do
      phrases << "#{params[:phrase]}"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{[:word1, :word2, :word3, :word4, :word5].join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    case :operation
    when "multiply"
      "#{:number1.to_i * :number2.to_i}"
    when "add"
      "#{:number1.to_i + :number2.to_i}"
    when "divide"
      "#{:number1.to_i / :number2.to_i}"
    when "subtract"
      "#{:number1.to_i - :number2.to_i}"
    end
  end
end

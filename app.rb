require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end 

    post '/piglatinize' do 
        user_phrase = params[:user_phrase]
        @word = PigLatinizer.new
        @piglatinized_phrase = @word.piglatinize(user_phrase)

        erb :last_response
    end 
end
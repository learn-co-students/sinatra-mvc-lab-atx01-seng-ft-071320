require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
        piggy = PigLatinizer.new 
        @pig = piggy.piglatinize(params[:user_phrase])
        erb :piglatinized 
    end
end
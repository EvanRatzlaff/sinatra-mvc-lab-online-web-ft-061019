require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input 
    end
    post '/piglatinize' do
        @text = params[:user_phrase]
        @piglatinizer = PigLatinizer.new
        @piglatin = @piglatinizer.piglatinize(params[:user_phrase])
        erb :piglatinize
    end
end
#always check your casing
require_relative 'config/environment'
require_relative 'models/piglatinizer'
# require_relative 'models/user_input'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinized_text = PigLatinizer.new.piglatinize(params[:user_text])
    erb :piglatinize
  end
end




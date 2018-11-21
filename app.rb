require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    asephray = PigLatinizer.new
    input = (params[:user_phrase])
    @pl = asephray.piglatinize(input)
    erb :piglatinized
  end

end

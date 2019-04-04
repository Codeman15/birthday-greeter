require 'sinatra/base'

class Greeter <Sinatra::Base

  post '/result' do
    @name = params[:Name]
    @day = params[:Day]
    @month = params[:Month]
    erb :result
  end

  get '/' do
    erb :enter_birthday
  end
end

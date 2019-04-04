require 'sinatra/base'
require './lib/birthday'

class Greeter <Sinatra::Base

  post '/result' do
    @date = Birthday.new(params[:Day], params[:Month])
    @name = params[:Name]
    #@day = params[:Day]
    #@month = params[:Month]
    erb :result
  end

  get '/' do
    erb :enter_birthday
  end
end

require 'sinatra'

class Application < Sinatra::Base
  set :views, Proc.new { File.join(root, '../views') }
  set :public_folder, 'public'

  get '/' do
    haml :index
  end

  get '/css/*.css' do |style|
    sass :"stylesheets/#{style}"
  end

  get '/javascript/*.js' do |name|
    coffee :"coffee/#{name}"
  end
end

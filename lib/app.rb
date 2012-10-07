require 'sinatra'
require 'haml'
require 'coffee_script'

class Application < Sinatra::Base
  set :root, File.dirname('..')
  set :public_folder, 'public'

  get '/' do
    haml :index
  end

  get '/css/*.css' do |style|
    sass :"stylesheets/#{style}"
  end

  get '/javascript/app/*.js' do |name|
    coffee :"coffee/#{name}"
  end
end
